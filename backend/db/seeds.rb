BANDS = [
  { name: "Radiohead",
    year_formed: 1985,
    website: "radiohead.com"
  }, {
    name: "Pink Floyd",
    year_formed: 1965,
    website: "www.pinkfloyd.com"
  }, {
    name: "XTC",
    year_formed: 1976,
    year_disbanded: 2006,
  }
]

BANDS.each do |band|
  Band.create(band)
end
