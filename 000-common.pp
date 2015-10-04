node 'default' { 
  
  ssh_authorized_key { "marcin@dylux-think":
    user => 'root',
    type => 'ssh-dss',
    key => 'AAAAB3NzaC1kc3MAAACBAO2WnNjheqKxpF2Nkll1rg+Y/SuACB/xfVqF+22IwSwaBo0C5OQaKnFEbtmsITMdlSd+gl7SG1ZTNgbVkpRjM3BYRNBOhGt3FAUhaliuqDQxQAfdxgrWk+zUOmWdeZELWmfKR1FIywLXxmdJxuwR83urLAK0YyBa/ZydCYEyHSFXAAAAFQCeLkpXJHtpaGicLHnx0cO9xm+CkQAAAIEAvJ5uVqrY4hbQCHvAHp9XndU22vjtf6mrloaEb24i9heFK2QKMBq7DBQgY4DvRQNooEoafLBczsJDBNC/ptiJKuufJ/0DDZzt/leP33FcTvoiwUCiENaBYn4ah2Q8d8wv1MSiVpeqCdH+yf7wGvxIsYijVjyQsrvDdvt8YpM4jO8AAACBANVX5QLYZcCIteryaYOKb4LFVfsncXRBkOiPIIr3OGqscDE77AL3P9ZH9EhB1eKc9ayQf2ISP3ow6VHI+lJnACt05AkKlyalrv75p1np9GWCRpj/w0kjbv7yc8UO2j/IvmNHC+uUQLiZxkUxfiLefGrLrF63L1Ra5aFFbNdgE8Ek',
  }
}

