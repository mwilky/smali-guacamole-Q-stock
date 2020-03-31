.class public final synthetic Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$ubjndBgUEGQj6yARFcL6HXexsNI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

.field private final synthetic f$1:Landroid/hardware/fingerprint/FingerprintManager;

.field private final synthetic f$2:Landroid/hardware/fingerprint/IFingerprintService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/OverviewProxyService$1;Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/IFingerprintService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$ubjndBgUEGQj6yARFcL6HXexsNI;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    iput-object p2, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$ubjndBgUEGQj6yARFcL6HXexsNI;->f$1:Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p3, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$ubjndBgUEGQj6yARFcL6HXexsNI;->f$2:Landroid/hardware/fingerprint/IFingerprintService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$ubjndBgUEGQj6yARFcL6HXexsNI;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    iget-object v1, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$ubjndBgUEGQj6yARFcL6HXexsNI;->f$1:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object p0, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$ubjndBgUEGQj6yARFcL6HXexsNI;->f$2:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$notifyGestureStarted$7$OverviewProxyService$1(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/IFingerprintService;)V

    return-void
.end method
