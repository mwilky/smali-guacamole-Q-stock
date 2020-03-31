.class public final synthetic Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$XHd3K8Vp7fhFb4ucZudIi42URZk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/theme/ThemeOverlayManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/theme/ThemeOverlayManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$XHd3K8Vp7fhFb4ucZudIi42URZk;->f$0:Lcom/android/systemui/theme/ThemeOverlayManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$XHd3K8Vp7fhFb4ucZudIi42URZk;->f$0:Lcom/android/systemui/theme/ThemeOverlayManager;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/theme/ThemeOverlayManager;->lambda$applyCurrentUserOverlays$0$ThemeOverlayManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
