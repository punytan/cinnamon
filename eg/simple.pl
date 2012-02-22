use Cinnamon::DSL;

my $application = 'Cinnamon::App';

set application => $application;
set repository  => "git://repository.admin.h/projects/$application";
set deploy_to   => "/home/httpd/apps/$application";

role development => 'development.example.com';
task development => {
    update => sub {
        my ($host, @args) = @_;

        run  'pwd';
        sudo 'pwd';

        ssh {
            run  'pwd';
            sudo 'pwd';
        } $host;
    },

    start => sub {
        my ($host, @args) = @_;
        # ...
    },
};

role production => 'production.example.com';
task production => {
    update => sub {
        my ($host, @args) = @_;

        run  'pwd';
        sudo 'pwd';

        ssh {
            run  'pwd';
            sudo 'pwd';
        } $host;
    },

    start => sub {
        my ($host, @args) = @_;
        # ...
    },
};
