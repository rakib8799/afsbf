<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('cause_donations', function (Blueprint $table) {
            $table->id();
            $table->foreignId('cause_id')->nullable()->constrained('causes');
            $table->foreignId('user_id')->constrained('users');
            $table->string('price');
            $table->string('currency')->nullable();
            $table->string('donation_type');
            $table->string('payment_id');
            $table->string('payment_method');
            $table->string('payment_status');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('cause_donations');
    }
};
