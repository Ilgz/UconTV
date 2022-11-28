import 'package:new_ucon/models/channel_category_model.dart';
import 'package:new_ucon/models/channel_model.dart';

class Channels{
  static List<Channel> all=[];
  static List<Channel> child=[];
  static List<Channel> film=[];
  static List<Channel> news=[];
  static List<Channel> cog=[];
  static List<Channel> sport=[];
  static List<Channel> music=[];
  static List<Channel> inter=[];

}
class ChannelItemModel {
  ChannelItemModel(
     this.name,
     this.imageLink,
      );
  String name;
  String imageLink;
}
List<List<ChannelItemModel>> getDoubleChannels(){
  List<List<ChannelItemModel>> channels=[[],[]];
  for(int i=0;i<getChannels().length;i++){
    if(i.isEven){
      channels[0].add(getChannels()[i]);
    }else{
      channels[1].add(getChannels()[i]);
    }
  }
  return channels;
}
List<ChannelItemModel> getChannels() {
  List<ChannelItemModel> listChannels = [];
  listChannels.add(ChannelItemModel("Event TV","https://i.ibb.co/4P223m5/event.jpg"));
  listChannels.add(ChannelItemModel("Тасма Кино","https://i.ibb.co/PgfjNcz/image.jpg"));
  listChannels.add(ChannelItemModel("КТРК","https://i.ibb.co/DkbJ43S/image.jpg"));
  listChannels.add(ChannelItemModel("НТС", "https://i.ibb.co/tqc4mxJ/image.jpg"));
  listChannels.add(ChannelItemModel("Любимый HD","https://i.ibb.co/6bY2Xnb/image.jpg"));
  listChannels.add(ChannelItemModel("New TV","https://i.ibb.co/gVt9YBV/image.jpg"));
  listChannels.add(ChannelItemModel("7 Канал","https://i.ibb.co/D4gZyg7/7.jpg"));
  listChannels.add(ChannelItemModel("ТНТ Кыргызстан","https://i.ibb.co/k8KLJyX/image.jpg"));
  listChannels.add(ChannelItemModel("НТВ KG","https://i.ibb.co/3WKpKzY/kg.jpg"));
  listChannels.add(ChannelItemModel("Пирамида HD","https://i.ibb.co/y637ZWv/image.jpg"));
  listChannels.add(ChannelItemModel("ОШ ТВ","https://i.ibb.co/sVjBs07/image.jpg"));
  listChannels.add(ChannelItemModel("Ош Пирим","https://i.ibb.co/tHzb64T/image.jpg"));
  listChannels.add(ChannelItemModel("Семейный","https://i.ibb.co/XzLRs5w/image.jpg"));
  listChannels.add(ChannelItemModel("РЕН ТВ","https://i.ibb.co/pwGPwmZ/image.jpg"));
  listChannels.add(ChannelItemModel("Первый Канал", "https://i.ibb.co/YPThff6/image.jpg"));
  listChannels.add(ChannelItemModel("Первый Канал HD","https://i.ibb.co/vYqTdhG/hd.jpg"));
  listChannels.add(ChannelItemModel("Россия 1 HD","https://i.ibb.co/HDMGKp4/1.jpg"));
  listChannels.add(ChannelItemModel("Россия РТР","https://i.ibb.co/wKJPSff/image.jpg"));
  listChannels.add(ChannelItemModel("Жаша!","https://i.ibb.co/XVjg88x/image.jpg"));
  listChannels.add(ChannelItemModel("Super TV","https://i.ibb.co/9HctSLk/super-tv.jpg"));
  listChannels.add(ChannelItemModel("Азия ТВ","https://i.ibb.co/tDQ1VdC/image.jpg"));
  listChannels.add(ChannelItemModel("Ынтымак","https://i.ibb.co/YbqVmJY/image.jpg"));
  listChannels.add(ChannelItemModel("ЭлТР","https://i.ibb.co/BfFxWP7/1.jpg"));
  listChannels.add(ChannelItemModel("5 Канал","https://i.ibb.co/3MNdqrj/5.jpg"));
  listChannels.add(ChannelItemModel("Эхо Манаса","https://i.ibb.co/ykDg0Gn/image.jpg"));
  listChannels.add(ChannelItemModel("9 Канал","https://i.ibb.co/R0KJH36/9.jpg"));
  listChannels.add(ChannelItemModel("МИР","https://i.ibb.co/X37H4pR/image.jpg"));
  listChannels.add(ChannelItemModel("СТС","https://i.ibb.co/h8ryJ6W/image.jpg"));
  listChannels.add(ChannelItemModel("Fashion TV HD","https://i.ibb.co/z6v76By/image.jpg"));
  listChannels.add(ChannelItemModel("Психология","https://i.ibb.co/r2zBxyT/image.jpg"));
  listChannels.add(ChannelItemModel("Живи!","https://i.ibb.co/hLVJJZM/image.jpg"));
  listChannels.add(ChannelItemModel("Че!","https://i.ibb.co/W0TZsVH/image.jpg"));
  listChannels.add(ChannelItemModel("Сарафан","https://i.ibb.co/WHPM3f4/image.jpg"));
  listChannels.add(ChannelItemModel("Ю-ТВ","https://i.ibb.co/hcHWQsZ/image.jpg"));
  listChannels.add(ChannelItemModel("Здоровое TB","https://i.ibb.co/N1STcyW/image.jpg"));
  listChannels.add(ChannelItemModel("Время","https://i.ibb.co/WFndqQZ/image.jpg"));
  listChannels.add(ChannelItemModel("Усадьба","https://i.ibb.co/kqt7ygt/image.jpg"));
  listChannels.add(ChannelItemModel("ТВ Центр","https://i.ibb.co/mJvnZPQ/1.jpg"));
  listChannels.add(ChannelItemModel("312 ТВ","https://i.ibb.co/WtSgm67/312.jpg"));
  listChannels.add(ChannelItemModel("Телекафе","https://i.ibb.co/kGFFw1m/image.jpg"));
  listChannels.add(ChannelItemModel("Спас ТВ","https://i.ibb.co/3yvGD04/image.jpg"));
  listChannels.add(ChannelItemModel("Союз","https://i.ibb.co/sKvbRvV/1.jpg"));
  listChannels.add(ChannelItemModel("Беларусь 24","https://i.ibb.co/xH4ZLQk/24.jpg"));
  listChannels.add(ChannelItemModel("ТРО ТВ","https://i.ibb.co/Qb7mxTB/image.jpg"));
  listChannels.add(ChannelItemModel("Суббота","https://i.ibb.co/rZ4rnLf/image.jpg"));
  listChannels.add(ChannelItemModel("UA TV","https://i.ibb.co/cywx4tQ/ua.jpg"));
  listChannels.add(ChannelItemModel("RTG TV","https://i.ibb.co/nzk2Pp5/rtg.jpg"));
  listChannels.add(ChannelItemModel("E TV [Game Show]","https://i.ibb.co/Jr6TRxn/e-tv.jpg"));
  listChannels.add(ChannelItemModel("Atameken Business","https://i.ibb.co/qyh4dRH/image.jpg"));
  listChannels.add(ChannelItemModel("Звезда ","https://i.ibb.co/sjmDwvd/image.jpg"));
  listChannels.add(ChannelItemModel("Ювелирочка","https://i.ibb.co/r5nr4cT/image.jpg"));
  listChannels.add(ChannelItemModel("КТРК Спорт", "https://i.ibb.co/DLPyRYS/image.jpg"));

  listChannels.add(ChannelItemModel("Setanta Sport 1", "https://i.ibb.co/vBsDzvv/111.jpg"));
  listChannels.add(ChannelItemModel("Setanta Sport 2", "https://i.ibb.co/0yV27Rx/22.jpg"));
  listChannels.add(ChannelItemModel("Матч! Футбол 1","https://i.ibb.co/1vGtPyd/1.jpg"));
  listChannels.add(ChannelItemModel("Матч! Футбол 2","https://i.ibb.co/HDZ7v19/2.jpg"));
  listChannels.add(ChannelItemModel("Матч! Футбол 3","https://i.ibb.co/2Y6P4Dw/3.jpg"));
  listChannels.add(ChannelItemModel("Матч! Планета","https://i.ibb.co/37vzjNt/image.jpg"));
  listChannels.add(ChannelItemModel("Матч! Арена","https://i.ibb.co/wcpj7hD/image.jpg"));
  listChannels.add(ChannelItemModel("Матч! Премьер","https://i.ibb.co/sFDmTsV/image.jpg"));
  listChannels.add(ChannelItemModel("Матч! Страна","https://i.ibb.co/M7L3kpn/image.jpg"));
  listChannels.add(ChannelItemModel("Матч! ТВ", "https://i.ibb.co/5FQYB8L/image.jpg"));
  listChannels.add(ChannelItemModel("Матч! Боец", "https://i.ibb.co/qMv3M4q/1.jpg"));

  listChannels.add(ChannelItemModel("MMA-TV.com", "https://i.ibb.co/nPgrmvL/mmatv.jpg"));
  listChannels.add(ChannelItemModel("Бокс ТВ Плюс","https://i.ibb.co/GcXhdJf/1.jpg"));

  listChannels.add(ChannelItemModel("Кыргыз спорт", "https://i.ibb.co/KyTZWX0/image.jpg"));
  listChannels.add(ChannelItemModel("Q-Sport Arena", "https://i.ibb.co/Rp0XVgF/1.jpg"));
  listChannels.add(ChannelItemModel("Q-Sport International", "https://i.ibb.co/nfp3Tnk/q-sport-int.jpg"));

  listChannels.add(ChannelItemModel("Eurosport 1", "https://i.ibb.co/4gQ0hJz/1.jpg"));
  listChannels.add(ChannelItemModel("Eurosport 2", "https://i.ibb.co/2SvLhvs/2.jpg"));
  listChannels.add(ChannelItemModel("Eurosport 4k", "https://i.ibb.co/yWThZZz/eurosport4k2.jpg"));
  listChannels.add(ChannelItemModel("Viasat Sport", "https://i.ibb.co/rMqMZ4G/image.jpg"));

  listChannels.add(ChannelItemModel("KHL","https://i.ibb.co/ynXqdRj/2.jpg"));
  listChannels.add(ChannelItemModel("KHL Prime ", "https://i.ibb.co/Thx242L/1.jpg"));
  listChannels.add(ChannelItemModel("Точка отрыва","https://i.ibb.co/26X5tp1/image.jpg"));
  listChannels.add(ChannelItemModel("Русский экстрим","https://i.ibb.co/6Z3n6My/image.jpg"));
  listChannels.add(ChannelItemModel("Моторспорт","https://i.ibb.co/Tv0W6d0/motorsport.jpg"));
  listChannels.add(ChannelItemModel("Sport UZ","https://i.ibb.co/C1RYMxs/sport-uz.jpg"));
  listChannels.add(ChannelItemModel("Кино ТВ HD","https://i.ibb.co/PTDY7Lv/image.jpg"));
  listChannels.add(ChannelItemModel("Cinemax HD","https://i.ibb.co/p1Vhjhq/CM.jpg"));
  listChannels.add(ChannelItemModel("Cinema","https://i.ibb.co/HKp9P6q/cinema.jpg"));
  listChannels.add(ChannelItemModel("NUR TV","https://i.ibb.co/MggTD61/nur-tv.jpg"));
  listChannels.add(ChannelItemModel("Дорама","https://i.ibb.co/StT52hr/image.jpg"));
  listChannels.add(ChannelItemModel("TV1.KG Бишкек Шаары","https://i.ibb.co/5cxNzCd/TV1.jpg"));
  listChannels.add(ChannelItemModel("TV1.KG Бишкек City","https://i.ibb.co/303BfMC/TV1-City.jpg"));
  listChannels.add(ChannelItemModel("TV1.KG Cinemastan","https://i.ibb.co/DtJ4qvf/TV1-Cinemastan.jpg"));
  listChannels.add(ChannelItemModel("Кинопремьера HD","https://i.ibb.co/GHMpF6n/image.jpg"));
  listChannels.add(ChannelItemModel("Киносвидание HD","https://i.ibb.co/TTN2nyg/image.jpg"));
  listChannels.add(ChannelItemModel("Киносемья HD","https://i.ibb.co/4Ww2vpX/image.jpg"));
  listChannels.add(ChannelItemModel("Кинохит HD","https://i.ibb.co/w6TmF86/image.jpg"));
  listChannels.add(ChannelItemModel("Киномикс HD","https://i.ibb.co/7yGTqYq/image.jpg"));
  listChannels.add(ChannelItemModel("Родное кино","https://i.ibb.co/vYcggz2/image.jpg"));
  listChannels.add(ChannelItemModel("Наше новое кино","https://i.ibb.co/dDnwWxL/image.jpg"));
  listChannels.add(ChannelItemModel("Мужское кино HD","https://i.ibb.co/B4PZSNg/image.jpg"));
  listChannels.add(ChannelItemModel("Киноужас","https://i.ibb.co/jk5HpnQ/image.jpg"));
  listChannels.add(ChannelItemModel("Индийское кино","https://i.ibb.co/kBP86SG/image.jpg"));
  listChannels.add(ChannelItemModel("TV 1000","https://i.ibb.co/N14JdDp/tv1000-2.jpg"));
  listChannels.add(ChannelItemModel("TV 1000 Action","https://i.ibb.co/bNkNnYF/TV1000-Action.jpg"));
  listChannels.add(ChannelItemModel("TV 1000 Русское кино","https://i.ibb.co/26HskgL/TV1000.jpg"));
  listChannels.add(ChannelItemModel("Amedia Hit HD","https://i.ibb.co/sP7BXk7/amedia-hit.jpg"));
  listChannels.add(ChannelItemModel("Amedia Premium HD","https://i.ibb.co/st7jpjp/A-media-premium.jpg"));
  listChannels.add(ChannelItemModel("A1 (Amedia)","https://i.ibb.co/fYC9hmd/a1.jpg"));
  listChannels.add(ChannelItemModel("A2 (Amedia)","https://i.ibb.co/8gR5XF9/a2.jpg"));
  listChannels.add(ChannelItemModel("Paramount Channel","https://i.ibb.co/1nqq94s/paramount.jpg"));
  listChannels.add(ChannelItemModel("Paramount Comedy","https://i.ibb.co/6tnr7pM/paramount-comedy.jpg"));
  listChannels.add(ChannelItemModel("Настоящее страшное ТВ","https://i.ibb.co/CMXJ7Qz/image.jpg"));
  listChannels.add(ChannelItemModel("Еврокино","https://i.ibb.co/PNbvzsT/image.jpg"));
  listChannels.add(ChannelItemModel("Fox Channel","https://i.ibb.co/CQqXxR3/fox-channel.jpg"));
  listChannels.add(ChannelItemModel("Fox Life","https://i.ibb.co/DVYNkkD/fox-life.jpg"));
  listChannels.add(ChannelItemModel("СТВ","https://i.ibb.co/Jx1SzfK/image.jpg"));
  listChannels.add(ChannelItemModel("Феникс+Кино","https://i.ibb.co/Db1fDZ0/image.jpg"));
  listChannels.add(ChannelItemModel("Sony Sci-Fi","https://i.ibb.co/vhgGrQr/sony-scifi.jpg"));
  listChannels.add(ChannelItemModel("Sony Turbo","https://i.ibb.co/gy6LqwK/Sony-Turbo.jpg"));
  listChannels.add(ChannelItemModel("Ретро ТВ","https://i.ibb.co/x71CryY/image.jpg"));
  listChannels.add(ChannelItemModel("Пятница 2.0","https://i.ibb.co/sP9z8M7/20.jpg"));
  listChannels.add(ChannelItemModel("Дом кино","https://i.ibb.co/pQNBJF3/image.jpg"));
  listChannels.add(ChannelItemModel("Дом кино Премиум","https://i.ibb.co/CPMvvkf/image.jpg"));
  listChannels.add(ChannelItemModel("Иллюзион+","https://i.ibb.co/0VNnLNh/image.jpg"));
  listChannels.add(ChannelItemModel("Русский Иллюзион","https://i.ibb.co/vX86hMR/image.jpg"));
  listChannels.add(ChannelItemModel("Мосфильм. Золотая коллекция","https://i.ibb.co/yqsrDY7/icon.jpg"));
  listChannels.add(ChannelItemModel("Бобёр","https://i.ibb.co/2M4T19S/image.jpg"));

  listChannels.add(ChannelItemModel("Т24","https://i.ibb.co/NnFx85W/24.jpg"));

  listChannels.add(ChannelItemModel("Ала-Тоо 24","https://i.ibb.co/bWRjxtK/24.jpg"));
  listChannels.add(ChannelItemModel("Россия 24", "https://i.ibb.co/P5Z3Mcd/24.jpg"));
  listChannels.add(ChannelItemModel("МИР 24","https://avatars.mds.yandex.net/get-vh/1535404/16416816241903537043-2e05zIO6YtezmFuc2qDnGA-1564411276/400x300"));
  listChannels.add(ChannelItemModel("Евроновости","https://i.ibb.co/vxrvVrb/image.jpg"));
  listChannels.add(ChannelItemModel("РБК","https://i.ibb.co/KGBF7z3/image.jpg"));
  listChannels.add(ChannelItemModel("Настоящее время", "https://i.ibb.co/M5DzVCG/image.jpg"));
  listChannels.add(ChannelItemModel("CGTN Русский", "https://i.ibb.co/W0cwjQH/cgtn.jpg"));
  listChannels.add(ChannelItemModel("КТРК Баластан","https://i.ibb.co/cYcVP0J/image.jpg"));
  listChannels.add(ChannelItemModel("Тасма Детский","https://i.ibb.co/tx4GTr4/image.jpg"));
  listChannels.add(ChannelItemModel("Nickelodeon","https://i.ibb.co/gjJ60rD/image.jpg"));
  listChannels.add(ChannelItemModel("Nickelodeon HD","https://i.ibb.co/fYRzkC6/nick-hd.jpg"));
  listChannels.add(ChannelItemModel("Nick jr.","https://i.ibb.co/gJLvkdn/nick-jr.jpg"));
  listChannels.add(ChannelItemModel("Nicktoons","https://i.ibb.co/yfMz3mD/image.jpg"));
  listChannels.add(ChannelItemModel("В гостях у сказки","https://i.ibb.co/TqWvyYp/image.jpg"));
  listChannels.add(ChannelItemModel("Детский ","https://i.ibb.co/KzTgZ3Z/image.jpg"));
  listChannels.add(ChannelItemModel("Канал Disney","https://i.ibb.co/C2zxrr3/image.jpg"));
  listChannels.add(ChannelItemModel("TiJi","https://i.ibb.co/y5JTMVk/tiji.jpg"));
  listChannels.add(ChannelItemModel("Gulli Girl","https://i.ibb.co/Jjxp1xV/gulli-girl.jpg"));
  listChannels.add(ChannelItemModel("Мультиландия","https://i.ibb.co/ZMtYYDn/image.jpg"));
  listChannels.add(ChannelItemModel("Мульт","https://i.ibb.co/m0HxsPb/image.jpg"));
  listChannels.add(ChannelItemModel("Da Vinci Kids","https://i.ibb.co/vvqg8sw/image.jpg"));
  listChannels.add(ChannelItemModel("Cartoon Network","https://i.ibb.co/9pz6KYY/Cartoon-Network.jpg"));
  listChannels.add(ChannelItemModel("Мама","https://i.ibb.co/4SFCYfV/image.jpg"));
  listChannels.add(ChannelItemModel("Карусель","https://i.ibb.co/SJg9CJb/image.jpg"));
  listChannels.add(ChannelItemModel("TRT Cocuk","https://i.ibb.co/rxP4731/trt-cocuk.jpg"));
  listChannels.add(ChannelItemModel("КТРК Музыка","https://i.ibb.co/0rwJPbN/image.jpg"));
  listChannels.add(ChannelItemModel("Tumar TV","https://i.ibb.co/xfc7k46/image.jpg"));
  listChannels.add(ChannelItemModel("ТНТ Music","https://i.ibb.co/gmcZYF7/music.jpg"));
  listChannels.add(ChannelItemModel("Bridge TV Русский Хит","https://i.ibb.co/jLLTQxW/image.jpg"));
  listChannels.add(ChannelItemModel("Bridge TV Classic","https://i.ibb.co/1JxT0JH/image.jpg"));
  listChannels.add(ChannelItemModel("Bridge TV Hits","https://i.ibb.co/TvXSV3j/image.jpg"));
  listChannels.add(ChannelItemModel("Bridge TV Шлягер","https://i.ibb.co/80kctft/image.jpg"));
  listChannels.add(ChannelItemModel("Ля-Минор ","https://i.ibb.co/P5ckPw3/image.jpg"));
  listChannels.add(ChannelItemModel("MTV Россия","https://i.ibb.co/sHw9Bzy/image.jpg"));
  listChannels.add(ChannelItemModel("MTV Live HD","https://i.ibb.co/WHKTgmT/mtv-live-hd.jpg"));
  listChannels.add(ChannelItemModel("Европа Плюс ТВ","https://i.ibb.co/RQB2jB5/europa-plus.jpg"));
  listChannels.add(ChannelItemModel("Ru TV","https://i.ibb.co/F8bpSHy/image.jpg"));
  listChannels.add(ChannelItemModel("Муз ТВ","https://i.ibb.co/109SprY/image.jpg"));
  listChannels.add(ChannelItemModel("Россия Культура","https://i.ibb.co/GF2cCCq/image.jpg"));
  listChannels.add(ChannelItemModel("Вопросы и Ответы","https://i.ibb.co/gdJC8DN/image.jpg"));
  listChannels.add(ChannelItemModel("Живая планета","https://i.ibb.co/0XZyf0R/image.jpg"));
  listChannels.add(ChannelItemModel("История","https://i.ibb.co/w7g2Sgd/image.jpg"));
  listChannels.add(ChannelItemModel("HDL","https://i.ibb.co/pn017cr/hdl.jpg"));
  listChannels.add(ChannelItemModel("National Geographic","https://i.ibb.co/1qLjZ7j/national-geogr.jpg"));
  listChannels.add(ChannelItemModel("National Geographic Wild","https://i.ibb.co/Lv0rmDK/nat-geo-wild.jpg"));
  listChannels.add(ChannelItemModel("Discovery Channel","https://i.ibb.co/gFdM46Q/discovery-channel.jpg"));
  listChannels.add(ChannelItemModel("Discovery Science","https://i.ibb.co/SPF07Pk/discovery-sience.jpg"));
  listChannels.add(ChannelItemModel("Viasat History","https://i.ibb.co/N9k6z0c/image.jpg"));
  listChannels.add(ChannelItemModel("Viasat Nature","https://i.ibb.co/H2p0nq6/image.jpg"));
  listChannels.add(ChannelItemModel("Viasat Explore","https://i.ibb.co/NLXBMCJ/image.jpg"));
  listChannels.add(ChannelItemModel("Охота и рыбалка","https://i.ibb.co/BgvL9cL/image.jpg"));
  listChannels.add(ChannelItemModel("Кухня ТВ","https://i.ibb.co/C8546xK/image.jpg"));
  listChannels.add(ChannelItemModel("Оружие","https://i.ibb.co/HzXBp3S/image.jpg"));
  listChannels.add(ChannelItemModel("Наука 2.0","https://i.ibb.co/Vt1QZ1d/2-0.jpg"));
  listChannels.add(ChannelItemModel("Драйв ТВ","https://i.ibb.co/8mXZY3Z/image.jpg"));
  listChannels.add(ChannelItemModel("Авто 24","https://i.ibb.co/kS9GJ0W/24.jpg"));
  listChannels.add(ChannelItemModel("Зоопарк","https://i.ibb.co/ZW8nq6G/image.jpg"));
  listChannels.add(ChannelItemModel("Домашние животные","https://i.ibb.co/Xsf7r35/image.jpg"));
  listChannels.add(ChannelItemModel("Авто плюс","https://i.ibb.co/Njs5Qzm/image.jpg"));
  listChannels.add(ChannelItemModel("Моя Планета ","https://i.ibb.co/hmKRPCb/image.jpg"));
  listChannels.add(ChannelItemModel("Моя Планета HD","https://i.ibb.co/HxRnXwP/hd.jpg"));
  listChannels.add(ChannelItemModel("TRT World HD","https://i.ibb.co/jRc4wcj/trt-world.jpg"));
  listChannels.add(ChannelItemModel("TRT Haber","https://i.ibb.co/CP1nKFg/trt-haber.jpg"));
  listChannels.add(ChannelItemModel("TRT Muzik","https://i.ibb.co/HVfKmD6/trt-music.jpg"));
  listChannels.add(ChannelItemModel("TRT Spor","https://i.ibb.co/QCtNg2c/trt-spor.jpg"));
  listChannels.add(ChannelItemModel("Kazakh TV","https://i.ibb.co/WDPX13L/kazakh-tv.jpg"));
  listChannels.add(ChannelItemModel("Qazaq TV","https://i.ibb.co/mBVmZGW/qazaq-tv.jpg"));
  listChannels.add(ChannelItemModel("Atameken Business","https://i.ibb.co/qyh4dRH/image.jpg"));
  listChannels.add(ChannelItemModel("Euronews English","https://i.ibb.co/PzbGyDC/image.jpg"));
  listChannels.add(ChannelItemModel("ТНВ Планета","https://i.ibb.co/FK1qLSs/image.jpg"));
  listChannels.add(ChannelItemModel("Russia Today","https://i.ibb.co/ggh7xtQ/russia-today.jpg"));
  listChannels.add(ChannelItemModel("Al jazeera","https://i.ibb.co/drbY4b3/al-jazeera.jpg"));
  listChannels.add(ChannelItemModel("MyZen TV HD","https://i.ibb.co/Ksfv78f/image.jpg"));
  listChannels.add(ChannelItemModel("CNN International","https://i.ibb.co/7tzPTDw/CNN-int.jpg"));
  listChannels.add(ChannelItemModel("DW Deutsch","https://i.ibb.co/ZdWDN1R/DW-deutsche.jpg"));
  listChannels.add(ChannelItemModel("Museum HD","https://i.ibb.co/wLFJsDj/museum.jpg"));
  listChannels.add(ChannelItemModel("CCTV 1","https://i.ibb.co/Fg7RcKt/cctv1.jpg"));
  listChannels.add(ChannelItemModel("CCTV 4","https://i.ibb.co/2NkVsbB/cctv4.jpg"));
  listChannels.add(ChannelItemModel("Uzbekistan TV","https://i.ibb.co/d2nfycy/ozbekiston1.jpg"));
  listChannels.add(ChannelItemModel("Ozbekiston24","https://i.ibb.co/zGPYgGv/ozbekiston-24.jpg"));
  listChannels.add(ChannelItemModel("MadaniyatVaMarifat ","https://i.ibb.co/W0VWXgw/madaniyat-va-marifat.jpg"));
  listChannels.add(ChannelItemModel("Navo","https://i.ibb.co/dMx9G07/Navo.jpg"));
  listChannels.add(ChannelItemModel("Dunyo Boylab","https://i.ibb.co/54B7L0p/dunya-boylab.jpg"));
  listChannels.add(ChannelItemModel("Mahalla","https://i.ibb.co/qx9V0Bb/mahalla.jpg"));
  listChannels.add(ChannelItemModel("Bolajon","https://i.ibb.co/hH0xBGQ/bolajon.jpg"));
  listChannels.add(ChannelItemModel("Kinoteatr UZ","https://i.ibb.co/VLKphGn/kinoteatr.jpg"));
  listChannels.add(ChannelItemModel("Yoshlar","https://i.ibb.co/zPkdGZ9/yoshlar.jpg"));
  listChannels.add(ChannelItemModel("France 24 Francais","https://i.ibb.co/CtrKZKb/france.jpg"));
  listChannels.add(ChannelItemModel("France 24 English","https://i.ibb.co/MB2gpZ4/france-eng.jpg"));
  listChannels.add(ChannelItemModel("CGTN ","https://i.ibb.co/5xbz3C1/cgtn.jpg"));
  return listChannels;
}