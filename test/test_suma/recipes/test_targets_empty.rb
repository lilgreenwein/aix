# Expected values
# return code : 1
# exception : AIX::PatchMgmt::InvalidTargetsProperty

node.default['nim'] = { 'clients' => { 'client1' => { 'oslevel' => '7100-02-01-1316' },
                                       'client2' => { 'oslevel' => '7100-03-01-1316' },
                                       'client3' => { 'oslevel' => '7100-04-01-1316' } },
                        'lpp_sources' => {} }

aix_suma 'Empty property targets (ERROR)' do
  oslevel '7100-01-01-1316'
  location '/sumatest/targets/error2'
  targets ''
  action :download
end
