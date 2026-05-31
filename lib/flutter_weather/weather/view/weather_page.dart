import 'package:bloc_docs_tutorials/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_docs_tutorials/flutter_weather/settings/settings.dart';
import 'package:bloc_docs_tutorials/flutter_weather/weather/weather.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () =>
                Navigator.of(context).push<void>(SettingsPage.route()),
          ),
        ],
        leading: BackButton(
          onPressed: () {
            Navigator.of(
              context,
            ).pushAndRemoveUntil<void>(MyHomePage.route(), (route) => false);
          },
        ),
      ),
      body: Center(
        child: BlocBuilder<WeatherCubit, WeatherState>(
          builder: (context, state) {
            return switch (state.status) {
              WeatherStatus.initial => const WeatherEmpty(),
              WeatherStatus.loading => const WeatherLoading(),
              WeatherStatus.failure => const WeatherError(),
              WeatherStatus.success => WeatherPopulated(
                weather: state.weather,
                units: state.temperatureUnits,
                onRefresh: () {
                  return context.read<WeatherCubit>().refreshWeather();
                },
              ),
            };
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.search, semanticLabel: 'Search'),
        onPressed: () async {
          final city = await Navigator.of(context).push(SearchPage.route());
          if (!context.mounted) return;
          await context.read<WeatherCubit>().fetchWeather(city);
        },
      ),
    );
  }
}
