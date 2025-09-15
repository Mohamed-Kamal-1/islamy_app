// child: ListView.separated(
// scrollDirection: Axis.horizontal,
// itemBuilder: (context, index) {
// return Container(
// padding: EdgeInsets.symmetric(horizontal: 11),
// decoration: BoxDecoration(
// color: AppColor.gold,
// borderRadius: BorderRadius.circular(20),
// ),
//
// child: Row(
// children: [
// Column(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: [
// Text(
// QuranResources.englishQuranResources[index],
// style: Theme.of(context).textTheme.headlineSmall,
// ),
// Text(
// QuranResources.arabicQuranResources[index],
// style: Theme.of(context).textTheme.headlineSmall,
// ),
// Text(
// "112 Verses",
// style: Theme.of(context).textTheme.titleSmall,
// ),
// ],
// ),
// Image.asset(AppImage.backgroundSura),
// ],
// ),
// );
// },
//
// separatorBuilder: (context, index) => SizedBox(width: 10),
// itemCount: 114,
// ),


