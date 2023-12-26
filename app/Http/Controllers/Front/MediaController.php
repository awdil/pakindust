<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Configuration;
use Storage;
use Spatie\MediaLibrary\MediaCollections\Models\Media;

class MediaController extends Controller
{
    
    private function __imageSave($request)
    {
        $fileNameArr = [];

        if (empty($request->file('Configuration'))) {
            return $fileNameArr;
        }

        foreach ($request->file('Configuration') as $imgKey => $imgValue) {
            if (is_array($imgValue['value'])) {
                $fileFullNames = [];

                foreach ($imgValue['value'] as $image) {
                    $fileFullName = $image->hashName();
                    $image->storeAs('uploads/configuration-images', $fileFullName);

                    // Add the media to the 'images' collection
                    Configuration::find($imgKey)->addMedia(storage_path('app/uploads/configuration-images/' . $fileFullName))
                        ->toMediaCollection('images');

                    $fileFullNames[] = $fileFullName;
                }

                $fileName = implode(",", $fileFullNames);
            } else {
                $fileName = $imgValue['value']->hashName();
                $imgValue['value']->storeAs('uploads/configuration-images', $fileName);

                // Add the media to the 'images' collection
                Configuration::find($imgKey)->addMedia(storage_path('app/uploads/configuration-images/' . $fileName))
                    ->toMediaCollection('images');
            }

            $fileNameArr[$imgKey] = $fileName;
        }

        return $fileNameArr;
    }


    public function publicPreviewImage($id)
    {
        $configuration = Configuration::findOrFail($id);

        // Get the first image from the 'images' collection (modify as needed)
        $media = $configuration->getMedia('images')->first();

        if (!$media) {
            abort(404);
        }

        // You can customize the response headers based on your needs
        return response()->file($media->getPath());
    }
    
}
