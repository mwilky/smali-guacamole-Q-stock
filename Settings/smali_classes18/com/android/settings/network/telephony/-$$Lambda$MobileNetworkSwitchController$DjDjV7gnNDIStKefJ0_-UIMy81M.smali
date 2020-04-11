.class public final synthetic Lcom/android/settings/network/telephony/-$$Lambda$MobileNetworkSwitchController$DjDjV7gnNDIStKefJ0_-UIMy81M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/network/telephony/MobileNetworkSwitchController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/telephony/MobileNetworkSwitchController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/-$$Lambda$MobileNetworkSwitchController$DjDjV7gnNDIStKefJ0_-UIMy81M;->f$0:Lcom/android/settings/network/telephony/MobileNetworkSwitchController;

    return-void
.end method


# virtual methods
.method public final onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/-$$Lambda$MobileNetworkSwitchController$DjDjV7gnNDIStKefJ0_-UIMy81M;->f$0:Lcom/android/settings/network/telephony/MobileNetworkSwitchController;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->lambda$displayPreference$0$MobileNetworkSwitchController(Landroid/widget/Switch;Z)V

    return-void
.end method
