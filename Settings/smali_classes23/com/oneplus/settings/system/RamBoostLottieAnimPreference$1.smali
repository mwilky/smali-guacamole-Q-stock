.class Lcom/oneplus/settings/system/RamBoostLottieAnimPreference$1;
.super Landroid/os/Handler;
.source "RamBoostLottieAnimPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;
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

    iput-object p1, p0, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference$1;->this$0:Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference$1;->this$0:Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;

    invoke-static {v0}, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;->access$000(Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;)V

    nop

    :goto_0
    return-void
.end method
