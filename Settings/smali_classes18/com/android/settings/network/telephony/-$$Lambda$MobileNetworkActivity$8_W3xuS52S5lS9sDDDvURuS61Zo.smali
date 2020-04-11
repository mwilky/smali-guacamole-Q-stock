.class public final synthetic Lcom/android/settings/network/telephony/-$$Lambda$MobileNetworkActivity$8_W3xuS52S5lS9sDDDvURuS61Zo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/network/telephony/MobileNetworkActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/telephony/MobileNetworkActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/-$$Lambda$MobileNetworkActivity$8_W3xuS52S5lS9sDDDvURuS61Zo;->f$0:Lcom/android/settings/network/telephony/MobileNetworkActivity;

    return-void
.end method


# virtual methods
.method public final onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/-$$Lambda$MobileNetworkActivity$8_W3xuS52S5lS9sDDDvURuS61Zo;->f$0:Lcom/android/settings/network/telephony/MobileNetworkActivity;

    invoke-virtual {v0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->lambda$updateBottomNavigationView$1$MobileNetworkActivity(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
