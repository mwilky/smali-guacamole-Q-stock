.class public final synthetic Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$FzQkanwY8TEeM97QNlP4yjS7F4s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/theme/ThemeOverlayManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/theme/ThemeOverlayManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$FzQkanwY8TEeM97QNlP4yjS7F4s;->f$0:Lcom/android/systemui/theme/ThemeOverlayManager;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$FzQkanwY8TEeM97QNlP4yjS7F4s;->f$0:Lcom/android/systemui/theme/ThemeOverlayManager;

    check-cast p1, Landroid/content/om/OverlayInfo;

    invoke-virtual {p0, p1}, Lcom/android/systemui/theme/ThemeOverlayManager;->lambda$applyCurrentUserOverlays$2$ThemeOverlayManager(Landroid/content/om/OverlayInfo;)Z

    move-result p0

    return p0
.end method
