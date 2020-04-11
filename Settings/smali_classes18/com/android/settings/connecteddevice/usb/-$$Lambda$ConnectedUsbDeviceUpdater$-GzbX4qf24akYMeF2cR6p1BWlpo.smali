.class public final synthetic Lcom/android/settings/connecteddevice/usb/-$$Lambda$ConnectedUsbDeviceUpdater$-GzbX4qf24akYMeF2cR6p1BWlpo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/-$$Lambda$ConnectedUsbDeviceUpdater$-GzbX4qf24akYMeF2cR6p1BWlpo;->f$0:Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/-$$Lambda$ConnectedUsbDeviceUpdater$-GzbX4qf24akYMeF2cR6p1BWlpo;->f$0:Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;

    invoke-virtual {v0, p1}, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->lambda$initUsbPreference$1$ConnectedUsbDeviceUpdater(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
