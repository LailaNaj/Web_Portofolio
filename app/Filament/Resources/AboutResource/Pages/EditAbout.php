<?php

namespace App\Filament\Resources\AboutResource\Pages;

use App\Filament\Resources\AboutResource;
use App\Models\About;
use App\Models\Contact;
use App\Models\Portofolio;
use App\Models\Resume;
use App\Models\Section;
use App\Models\Skill;
use Filament\Pages\Actions;
use Filament\Resources\Pages\EditRecord;

class EditAbout extends EditRecord
{
    protected static string $resource = AboutResource::class;

    protected function getActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
    public function show() {
        $about = About::find(1);
        $skills = Skill::all();
        $contact = Contact::find(1);
        $resumes = Resume::all();
        $portofolios = Portofolio::all();
        $section = Section::find(1);

        

        return view('welcome', compact('about','skills', 'contact', 'resumes','portofolios','section'));
    }
}
