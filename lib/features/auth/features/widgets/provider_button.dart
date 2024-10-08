part of 'provider_auth_section.dart';

class ProviderButton extends StatelessWidget {
  const ProviderButton(
      {super.key, this.imagePath, required this.onTap, this.icon});
  final String? imagePath;
  final VoidCallback onTap;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        borderRadius: AppBorderRadius.circularAll15,
        onTap: onTap,
        child: Container(
          height: 50.h,
          padding: const EdgeInsets.symmetric(vertical: 14),
          decoration: BoxDecoration(
            color: context.theme.colorScheme.surface,
            borderRadius: AppBorderRadius.circularAll15,
          ),
          child: icon == null
              ? Image.asset(imagePath!)
              : Icon(
                  icon,
                  size: 30.w,
                ),
        ),
      ),
    );
  }
}
