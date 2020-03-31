.class public final synthetic Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$rD72NeWKvvYjih6pAWlvN555mFM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$rD72NeWKvvYjih6pAWlvN555mFM;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/theme/-$$Lambda$ThemeOverlayManager$rD72NeWKvvYjih6pAWlvN555mFM;->f$0:Ljava/util/Set;

    check-cast p1, Landroid/content/om/OverlayInfo;

    invoke-static {p0, p1}, Lcom/android/systemui/theme/ThemeOverlayManager;->lambda$applyCurrentUserOverlays$3(Ljava/util/Set;Landroid/content/om/OverlayInfo;)Z

    move-result p0

    return p0
.end method
