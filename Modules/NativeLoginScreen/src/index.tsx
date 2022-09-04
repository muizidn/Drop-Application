import {
  requireNativeComponent,
  UIManager,
  Platform,
  ViewStyle,
} from 'react-native';

const LINKING_ERROR =
  `The package 'native-login-screen' doesn't seem to be linked. Make sure: \n\n` +
  Platform.select({ ios: "- You have run 'pod install'\n", default: '' }) +
  '- You rebuilt the app after installing the package\n' +
  '- You are not using Expo managed workflow\n';

type NativeLoginScreenProps = {
  color: string;
  style: ViewStyle;
};

const ComponentName = 'NativeLoginScreenView';

export const NativeLoginScreenView =
  UIManager.getViewManagerConfig(ComponentName) != null
    ? requireNativeComponent<NativeLoginScreenProps>(ComponentName)
    : () => {
        throw new Error(LINKING_ERROR);
      };
