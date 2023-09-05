ALTER TABLE mean_temperature
ADD FOREIGN KEY (staid) REFERENCES stations(staid)