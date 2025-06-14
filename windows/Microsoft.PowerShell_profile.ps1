oh-my-posh init pwsh --config 'C:/Users/*SEU_USUARIO*/AppData/Local/Programs/oh-my-posh/themes/atomic.omp.json' | Invoke-Expression
Set-PSReadLineOption -PredictionViewStyle ListView
function executeArtisanCli {
    php artisan $args
}
Set-Alias -Name pa -Value executeArtisanCli

Import-Module -Name Terminal-Icons