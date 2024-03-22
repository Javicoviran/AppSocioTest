import 'package:app_socio_test/presentation/helpers/screen_functions.dart';
import 'package:app_socio_test/presentation/helpers/constants.dart';
import 'package:app_socio_test/features/profile/presentation/models/shop_service_item_model.dart';
import 'package:app_socio_test/features/profile/presentation/widgets/profile_base_field.dart';
import 'package:app_socio_test/presentation/styles/theme.dart';
import 'package:app_socio_test/presentation/widgets/base_app_bar.dart';
import 'package:app_socio_test/presentation/widgets/base_contact_field.dart';
import 'package:app_socio_test/presentation/widgets/body.dart';
import 'package:flutter/material.dart';

// TODO: used in home AND in profil... view models in presentation general?

class BaseShopInfo extends StatelessWidget {
  // final ShopInfoModel shopInfo;

  const BaseShopInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Body(
          appBar: const BaseAppBar(title: 'Mi tienda', back: true),
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(
                  height: hJM(18),
                  width: double.infinity,
                  child: Image.network(defaultShopImage, fit: BoxFit.cover),
                ),
                Padding(
                  padding: EdgeInsets.all(wJM(5)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'COVIRAN SUPERMERCADOS S.A.U. (CHANA) (383)',
                        style: CommonTheme.titleMedium,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: hJM(1.5)),
                      const ProfileBaseField(title: 'Código', content: '383'),
                      const Divider(height: 0, color: CommonTheme.dividerColor),
                      SizedBox(height: hJM(2)),
                      const ProfileBaseField(
                        title: 'Dirección',
                        content: 'CL VIRGEN DEL MONTE 0 18015 GRANADA Granada',
                      ),
                      const Divider(height: 0, color: CommonTheme.dividerColor),
                      SizedBox(height: hJM(2)),
                      const ProfileBaseField(title: 'Teléfono', content: '958281160 - 661059930'),
                      const Divider(height: 0, color: CommonTheme.dividerColor),
                      SizedBox(height: hJM(2)),
                      const ProfileBaseField(
                        title: 'Plataforma',
                        specialContent: _ShopInventLocationWidget(),
                      ),
                      const Divider(height: 0, color: CommonTheme.dividerColor),
                      SizedBox(height: hJM(2)),
                      Row(
                        children: [
                          SizedBox(
                            width: wJM(46),
                            child: const ProfileBaseField(title: 'Tipo de software', content: 'Coviges'),
                          ),
                          const ProfileBaseField(title: 'Versión de software', content: 'RT'),
                        ],
                      ),
                      const Divider(height: 0, color: CommonTheme.dividerColor),
                      SizedBox(height: hJM(2)),
                      const ProfileBaseField(title: 'Nuevo concepto Covirán', content: 'Sí'),
                      const Divider(height: 0, color: CommonTheme.dividerColor),
                      SizedBox(height: hJM(2)),
                      const ProfileBaseField(title: 'Fecha apertura NCC', content: '16/09/2008 0:00'),
                      const Divider(height: 0, color: CommonTheme.dividerColor),
                      SizedBox(height: hJM(2)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: wJM(46),
                                child: const ProfileBaseField(title: 'm2 Sala de venta', content: '850'),
                              ),
                              const ProfileBaseField(title: 'm2 Almacén', content: '67'),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: wJM(46),
                                child: const ProfileBaseField(title: 'm2 Almacén 2', content: '0'),
                              ),
                              const ProfileBaseField(title: 'm2 Sótano', content: '0'),
                            ],
                          ),
                        ],
                      ),
                      const Divider(height: 0, color: CommonTheme.dividerColor),
                      SizedBox(height: hJM(2)),
                      const ProfileBaseField(title: 'Empleados', content: '20'),
                      const Divider(height: 0, color: CommonTheme.dividerColor),
                      SizedBox(height: hJM(2)),
                      const ProfileBaseField(title: 'PVPR', content: 'PVPR3'),
                      const Divider(height: 0, color: CommonTheme.dividerColor),
                      SizedBox(height: hJM(2)),
                      ProfileBaseField(
                        title: 'Contacto Covirán',
                        specialContent: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'ROSA MILAN RUIZ',
                              style: CommonTheme.bodyMedium,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const Spacer(),
                            Icon(Icons.email_rounded, color: CommonTheme.primaryColor, size: hJM(3.5)),
                            SizedBox(width: wJM(2)),
                            Icon(Icons.phone_rounded, color: CommonTheme.primaryColor, size: hJM(3.5)),
                          ],
                        ),
                      ),
                      ProfileBaseField(
                        title: 'Mi gestor',
                        specialContent: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Bienvenido Lopez Gijon',
                              style: CommonTheme.bodyMedium,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const Spacer(),
                            Icon(Icons.email_rounded, color: CommonTheme.primaryColor, size: hJM(3.5)),
                            SizedBox(width: wJM(2)),
                            Icon(Icons.phone_rounded, color: CommonTheme.primaryColor, size: hJM(3.5)),
                          ],
                        ),
                      ),
                      ProfileBaseField(
                        title: 'Contacto CASC',
                        specialContent: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Concepcion Poyatos Alcaide',
                              style: CommonTheme.bodyMedium,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const Spacer(),
                            Icon(Icons.email_rounded, color: CommonTheme.primaryColor, size: hJM(3.5)),
                            SizedBox(width: wJM(2)),
                            Icon(Icons.phone_rounded, color: CommonTheme.primaryColor, size: hJM(3.5)),
                          ],
                        ),
                      ),
                      const Divider(height: 0, color: CommonTheme.dividerColor),
                      SizedBox(height: hJM(2)),
                      Text(
                        'Mis servicios',
                        style: CommonTheme.titleMedium.copyWith(color: CommonTheme.primaryColorDark),
                      ),
                      SizedBox(height: hJM(2)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _ShopInfoServicesItem(
                            shopService: ShopServiceItemModel(name: 'Buzoneo', icon: Icons.mail_rounded),
                          ),
                          _ShopInfoServicesItem(
                            shopService:
                                ShopServiceItemModel(name: 'Club Familia', icon: Icons.family_restroom_rounded),
                          ),
                          _ShopInfoServicesItem(
                            shopService: ShopServiceItemModel(
                                name: 'Servicio prevención mancomunado', icon: Icons.groups_3_rounded),
                          ),
                        ],
                      ),
                      SizedBox(height: hJM(2)),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ShopInfoServicesItem extends StatelessWidget {
  final ShopServiceItemModel shopService;

  const _ShopInfoServicesItem({required this.shopService});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // TODO: tener en cuenta el número de servicios
      width: wJM(25),
      child: Column(
        children: [
          Icon(shopService.icon, color: CommonTheme.primaryColor, size: hJM(7)),
          SizedBox(height: hJM(1)),
          Text(
            shopService.name,
            style: CommonTheme.bodySmall.copyWith(fontWeight: FontWeight.bold),
            overflow: TextOverflow.fade,
            maxLines: 3,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class _ShopInventLocationWidget extends StatelessWidget {
  // final InventLocationModel platform;

  const _ShopInventLocationWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: wJM(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('ATARFE', style: CommonTheme.titleMedium, maxLines: 2, overflow: TextOverflow.ellipsis),
          SizedBox(height: hJM(1)),
          const ProfileBaseField(title: 'Responsable plataforma', content: 'Jose Manuel Suarez Perez'),
          const ProfileBaseField(
            title: 'Dirección de la plataforma',
            specialContent: BaseContactField(
              phoneNumber: '958 808 300',
              location: 'CR NACIONAL 432 BADAJOZ GRANADA KM 431 18230 - ATARFE Granada',
            ),
          ),
        ],
      ),
    );
  }
}
