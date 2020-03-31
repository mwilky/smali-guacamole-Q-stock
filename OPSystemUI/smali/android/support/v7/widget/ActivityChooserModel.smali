.class Landroid/support/v7/widget/ActivityChooserModel;
.super Landroid/database/DataSetObservable;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ActivityChooserModel$ActivityChooserModelClient;
    }
.end annotation


# static fields
.field private static final sDataModelRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/support/v7/widget/ActivityChooserModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRegistryLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v7/widget/ActivityChooserModel;->sRegistryLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/v7/widget/ActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public chooseActivity(I)Landroid/content/Intent;
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public getActivity(I)Landroid/content/pm/ResolveInfo;
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public getActivityCount()I
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public getActivityIndex(Landroid/content/pm/ResolveInfo;)I
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public getDefaultActivity()Landroid/content/pm/ResolveInfo;
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public getHistorySize()I
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public setDefaultActivity(I)V
    .locals 0

    const p0, 0x0

    throw p0
.end method
