.class public final synthetic Lcom/android/settings/wifi/tether/-$$Lambda$D_1FHSUVKSEMtNcl_DJfUazgW7s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/tether/-$$Lambda$D_1FHSUVKSEMtNcl_DJfUazgW7s;->f$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    return-void
.end method


# virtual methods
.method public final onTetherConfigUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/tether/-$$Lambda$D_1FHSUVKSEMtNcl_DJfUazgW7s;->f$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->onTetherConfigUpdated()V

    return-void
.end method
