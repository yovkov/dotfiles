return {
    'tpope/vim-projectionist',
    requires = {
        'tpope/vim-dispatch',
    },
    lazy = false,
    config = function()
        vim.g.projectionist_heuristics = {
            artisan = {
                ['app/*.php'] = {
                    type = 'source',
                    alternate = {
                        'tests/Feature/{}Test.php',
                        'tests/Unit/{}Test.php',
                    },
                },
                ['tests/Feature/*Test.php'] = {
                    type = 'test',
                    alternate = {
                        'app/{}.php',
                    },
                },
                ['tests/Unit/*Test.php'] = {
                    type = 'test',
                    alternate = {
                        'app/{}.php',
                    },
                },
            },
        }
    end,
}
