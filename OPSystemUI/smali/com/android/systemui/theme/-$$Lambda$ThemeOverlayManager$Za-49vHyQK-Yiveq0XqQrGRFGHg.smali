.class public final synthetic Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$Za-49vHyQK-Yiveq0XqQrGRFGHg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/theme/ThemeOverlayManager;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Landroid/os/UserHandle;

.field private final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/theme/ThemeOverlayManager;Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$Za-49vHyQK-Yiveq0XqQrGRFGHg;->f$0:Lcom/android/systemui/theme/ThemeOverlayManager;

    iput-object p2, p0, Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$Za-49vHyQK-Yiveq0XqQrGRFGHg;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$Za-49vHyQK-Yiveq0XqQrGRFGHg;->f$2:Landroid/os/UserHandle;

    iput-boolean p4, p0, Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$Za-49vHyQK-Yiveq0XqQrGRFGHg;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$Za-49vHyQK-Yiveq0XqQrGRFGHg;->f$0:Lcom/android/systemui/theme/ThemeOverlayManager;

    iget-object v1, p0, Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$Za-49vHyQK-Yiveq0XqQrGRFGHg;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$Za-49vHyQK-Yiveq0XqQrGRFGHg;->f$2:Landroid/os/UserHandle;

    iget-boolean p0, p0, Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$Za-49vHyQK-Yiveq0XqQrGRFGHg;->f$3:Z

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/theme/ThemeOverlayManager;->lambda$setEnabledAsync$7$ThemeOverlayManager(Ljava/lang/String;Landroid/os/UserHandle;Z)V

    return-void
.end method
