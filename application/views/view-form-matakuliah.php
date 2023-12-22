<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Form input data kuliah</title>
</head>

<body>
  <center>
    <form action="<?= base_url('matakuliah/cetak'); ?>" method="post">
      <table>
        <tr>
          <th colspan="3">
            Form Input Data Mahasiswa
          </th>
        </tr>
        <tr>
          <td colspan="3">
            <hr>
          </td>
        </tr>
        <tr>
          <th>Kode MTK</th>
          <th>:</th>
          <td>
            <input type="text" value="<?= set_value('kode')?>" name="kode" id="kode">
            
          </td>
          <td><?= form_error('kode'); ?></td>
        </tr>
        <tr>
          <th>Nama MTK</th>
          <td>:</td>
          <td>
            <input type="text" value="<?= set_value('nama')?>" name="nama" id="nama">
          </td>
          <td><?= form_error('nama'); ?></td>
        </tr>
        <tr>
          <th>SKS</th>
          <td>:</td>
          <td>
            <select name="sks" id="sks">
              <option value="">Pilih sks</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option value="4">4</option>
            </select>
          </td>
        </tr>
        <tr>
          <td colspan="3" align="center">
            <input type="submit" value="Submit">
          </td>
        </tr>
      </table>
    </form>
  </center>
</body>

</html>