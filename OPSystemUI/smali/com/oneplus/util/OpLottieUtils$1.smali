.class Lcom/oneplus/util/OpLottieUtils$1;
.super Ljava/lang/Object;
.source "OpLottieUtils.java"

# interfaces
.implements Lcom/airbnb/lottie/OnCompositionLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/util/OpLottieUtils;->applyLottieAnimIfNeeded(Landroid/widget/FrameLayout;Lcom/android/systemui/plugins/qs/QSTile$State;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/util/OpLottieUtils;


# direct methods
.method constructor <init>(Lcom/oneplus/util/OpLottieUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/util/OpLottieUtils$1;->this$0:Lcom/oneplus/util/OpLottieUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompositionLoaded(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/util/OpLottieUtils$1;->this$0:Lcom/oneplus/util/OpLottieUtils;

    invoke-static {v0}, Lcom/oneplus/util/OpLottieUtils;->access$000(Lcom/oneplus/util/OpLottieUtils;)Lcom/airbnb/lottie/LottieDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setComposition(Lcom/airbnb/lottie/LottieComposition;)Z

    iget-object p0, p0, Lcom/oneplus/util/OpLottieUtils$1;->this$0:Lcom/oneplus/util/OpLottieUtils;

    invoke-static {p0}, Lcom/oneplus/util/OpLottieUtils;->access$000(Lcom/oneplus/util/OpLottieUtils;)Lcom/airbnb/lottie/LottieDrawable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation()V

    return-void
.end method
