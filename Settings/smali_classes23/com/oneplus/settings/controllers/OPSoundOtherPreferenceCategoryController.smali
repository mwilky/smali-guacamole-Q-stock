.class public Lcom/oneplus/settings/controllers/OPSoundOtherPreferenceCategoryController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPSoundOtherPreferenceCategoryController.java"


# instance fields
.field private final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field private final mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/oneplus/settings/controllers/OPSoundOtherPreferenceCategoryController;->mKey:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/controllers/OPSoundOtherPreferenceCategoryController;->mChildren:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPSoundOtherPreferenceCategoryController;->mContext:Landroid/content/Context;

    const-string v1, "com.oneplus.dirac.simplemanager"

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->isAppPakExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPSoundOtherPreferenceCategoryController;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public setChildren(Ljava/util/List;)Lcom/oneplus/settings/controllers/OPSoundOtherPreferenceCategoryController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;)",
            "Lcom/oneplus/settings/controllers/OPSoundOtherPreferenceCategoryController;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPSoundOtherPreferenceCategoryController;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPSoundOtherPreferenceCategoryController;->mChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object p0
.end method
