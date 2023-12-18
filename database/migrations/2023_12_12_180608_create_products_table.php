<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('catalogue_id');
            $table->string('title');
            $table->string('slug');
            $table->text('content')->nullable();
            $table->text('excerpt')->nullable();
            $table->tinyInteger('comment');
            $table->string('meta_title')->nullable();
            $table->text('meta_description')->nullable();
            $table->text('meta_keywords')->nullable();
            $table->string('password')->nullable();
            $table->tinyInteger('status')->default(1)->comment('1 => Published, 2 => Draft, 3 => Trash, 4 => Private, 5 => Pending');
            $table->enum('visibility', ['Pu', 'PP', 'Pr'])->comment('Pu => Public, PP => Password Protected, Pr => Private');
            $table->datetime('publish_on')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('products');
    }
};
