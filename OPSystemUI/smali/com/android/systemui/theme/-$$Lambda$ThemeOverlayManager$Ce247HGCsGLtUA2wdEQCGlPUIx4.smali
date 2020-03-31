.class public final synthetic Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$Ce247HGCsGLtUA2wdEQCGlPUIx4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/theme/ThemeOverlayManager;

.field private final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/theme/ThemeOverlayManager;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$Ce247HGCsGLtUA2wdEQCGlPUIx4;->f$0:Lcom/android/systemui/theme/ThemeOverlayManager;

    iput-object p2, p0, Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$Ce247HGCsGLtUA2wdEQCGlPUIx4;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$Ce247HGCsGLtUA2wdEQCGlPUIx4;->f$0:Lcom/android/systemui/theme/ThemeOverlayManager;

    iget-object p0, p0, Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$Ce247HGCsGLtUA2wdEQCGlPUIx4;->f$1:Ljava/util/List;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/theme/ThemeOverlayManager;->lambda$applyCurrentUserOverlays$1$ThemeOverlayManager(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
