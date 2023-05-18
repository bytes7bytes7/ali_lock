part of 'home_bloc.dart';

class HomeState extends Equatable {
  const HomeState({
    required this.tabsAmount,
    required this.selectedTabIndex,
  });

  final int tabsAmount;
  final int selectedTabIndex;

  HomeState copyWith({
    int? tabsAmount,
    int? selectedTabIndex,
  }) {
    return HomeState(
      tabsAmount: tabsAmount ?? this.tabsAmount,
      selectedTabIndex: selectedTabIndex ?? this.selectedTabIndex,
    );
  }

  @override
  List<Object?> get props => [tabsAmount, selectedTabIndex];
}
