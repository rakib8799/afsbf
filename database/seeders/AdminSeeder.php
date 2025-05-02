<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Admin;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class AdminSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $admin = [
            'id' => 1,
            'name' => 'Admin',
            'email' => 'admin@gmail.com',
            'password' => Hash::make('12345')
        ];

        Admin::create($admin);
    }
}
