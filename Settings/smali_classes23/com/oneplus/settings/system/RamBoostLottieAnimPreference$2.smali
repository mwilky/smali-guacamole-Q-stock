.class Lcom/oneplus/settings/system/RamBoostLottieAnimPreference$2;
.super Ljava/lang/Object;
.source "RamBoostLottieAnimPreference.java"

# interfaces
.implements Lcom/airbnb/lottie/OnCompositionLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference$2;->this$0:Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompositionLoaded(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference$2;->this$0:Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;

    invoke-static {v0}, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;->access$100(Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Lcom/airbnb/lottie/LottieComposition;)V

    iget-object v0, p0, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference$2;->this$0:Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;

    invoke-static {v0}, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;->access$100(Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    return-void
.end method
