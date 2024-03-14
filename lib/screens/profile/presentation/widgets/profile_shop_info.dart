import 'package:app_socio_test/helpers/screen_functions.dart';
import 'package:app_socio_test/helpers/constants.dart';
import 'package:app_socio_test/screens/profile/presentation/widgets/profile_base_field.dart';
import 'package:app_socio_test/screens/profile/presentation/widgets/profile_contact_field.dart';
import 'package:app_socio_test/styles/theme.dart';
import 'package:app_socio_test/widgets/base_app_bar.dart';
import 'package:app_socio_test/widgets/body.dart';
import 'package:flutter/material.dart';

class ProfileShopInfo extends StatelessWidget {
  // final ProfileShopInfoModel shopInfo;

  const ProfileShopInfo({super.key});

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
                  padding: EdgeInsets.all(wJM(4)),
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
                        specialContent: _ShopInfoPlatformWidget(),
                      ),
                      const Divider(height: 0, color: CommonTheme.dividerColor),
                      SizedBox(height: hJM(2)),
                      Row(
                        children: [
                          SizedBox(
                            width: wJM(46),
                            child: const ProfileBaseField(title: 'Tipo de software', content: 'Coviges'),
                          ),
                          const ProfileBaseField(title: 'Versión de software', content: ''),
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
                            const Text('ROSA MILAN RUIZ', maxLines: 1, overflow: TextOverflow.ellipsis),
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
                            const Text('Bienvenido Lopez Gijon', maxLines: 1, overflow: TextOverflow.ellipsis),
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
                            const Text('Concepcion Poyatos Alcaide', maxLines: 1, overflow: TextOverflow.ellipsis),
                            const Spacer(),
                            Icon(Icons.email_rounded, color: CommonTheme.primaryColor, size: hJM(3.5)),
                            SizedBox(width: wJM(2)),
                            Icon(Icons.phone_rounded, color: CommonTheme.primaryColor, size: hJM(3.5)),
                          ],
                        ),
                      ),
                      const Divider(height: 0, color: CommonTheme.dividerColor),
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

class _ShopInfoPlatformWidget extends StatelessWidget {
  // final InventLocationModel platform;

  const _ShopInfoPlatformWidget();

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
            specialContent: ProfileContactField(
              phoneNumber: '958 808 300',
              location: 'CR NACIONAL 432 BADAJOZ GRANADA KM 431 18230 - ATARFE Granada',
            ),
          ),
        ],
      ),
    );
  }
}
