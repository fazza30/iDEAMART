part of 'model.dart';

class MandatoryMenu {
  String name;
  Icon icon;

  MandatoryMenu({
    required this.name,
    required this.icon
  });
}


class CbMenu {
  String name;
  Icon icon;

  CbMenu({
    required this.name,
    required this.icon
  });
}

var mandatoryMenuList = [
  MandatoryMenu(
    name: 'Pengelola',
    icon: Icon(Icons.settings_outlined, color: Colors.white, size:30)
  ),
  MandatoryMenu(
    name: 'Media Sosial',
    icon: Icon(Icons.people_alt_outlined , color: Colors.white, size:30)
  ),
  MandatoryMenu(
    name: 'Milik Perusahaan',
    icon: Icon(Icons.domain, color: Colors.white, size:30)
  ),
  MandatoryMenu(
    name: 'Administrasi',
    icon: Icon(Icons.credit_card_rounded, color: Colors.white, size:30)
  ),
  MandatoryMenu(
    name: 'Event',
    icon: Icon(Icons.local_play, color: Colors.white, size:30)
  ),
  MandatoryMenu(
    name: 'Pengembangan Diri',
    icon: Icon(Icons.person_add_sharp, color: Colors.white, size:30)
  ),
];

var cbMenuList = [
  CbMenu(
    name: 'Servis Data',
    icon: Icon(Icons.work_outline, color: Colors.white, size:30)
  ),
  CbMenu(
    name: 'Media Partner',
    icon: Icon(Icons.live_tv, color: Colors.white, size:30)
  )
];