# vim-ember-cli-skillz
Vim command wrappers for [ember-cli](https://ember-cli.com/).

### Commands

| vim command                          | shell execution                        |
| -------------------------------------|:--------------------------------------:|
| `:EmberGenerateAdapter <argument>`   | `$ ember generate adapter <argument>`  |
| `:EmberGenerateComponent <argument>` | `$ ember generate component <argument>`|
| `:EmberGenerateHelper <argument>`    | `$ ember generate helper <argument>`   |
| `:EmberGenerateModel <argument>`     | `$ ember generate model <argument>`    |
| `:EmberGenerateRoute <argument>`     | `$ ember generate route <argument>`    |
| `:EmberGenerateTemplate <argument>`  | `$ ember generate template <argument>` |
| `:EmberInstallAddon <argument>`      | `$ ember install <argument>`           |

### Leader keys

``` viml
  " leader keys

  nnoremap <leader>ema :EmberGenerateAdapter<space>
  nnoremap <leader>emc :EmberGenerateComponent<space>
  nnoremap <leader>emh :EmberGenerateHelper<space>
  nnoremap <leader>emm :EmberGenerateModel<space>
  nnoremap <leader>emr :EmberGenerateRoute<space>
  nnoremap <leader>emt :EmberGenerateTemplate<space>
  nnoremap <leader>emi :EmberInstallAddon<space>
```
