requires 'perl', '5.008001';
requires 'MRO::Compat', '>= 0.09';
requires 'Hash::Util::FieldHash::Compat';

on 'develop' => sub {
    requires 'Module::Install';
    requires 'Module::Install::CPANfile';
    requires 'Module::Install::AuthorTests';
    requires 'Module::Install::Repository';
    requires 'Module::Install::XSUtil';
};

on 'test' => sub {
    requires 'Test::More', '>= 0.62';
    requires 'Test::Exception', '>= 0.27';
    requires 'Scope::Guard';
    requires 'Hash::Util::FieldHash::Compat';
};
