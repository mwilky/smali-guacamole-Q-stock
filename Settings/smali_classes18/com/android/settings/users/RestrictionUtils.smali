.class public Lcom/android/settings/users/RestrictionUtils;
.super Ljava/lang/Object;
.source "RestrictionUtils.java"


# static fields
.field public static final sRestrictionDescriptions:[I

.field public static final sRestrictionKeys:[Ljava/lang/String;

.field public static final sRestrictionTitles:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "no_share_location"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/users/RestrictionUtils;->sRestrictionKeys:[Ljava/lang/String;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x7f1212f4

    aput v3, v1, v2

    sput-object v1, Lcom/android/settings/users/RestrictionUtils;->sRestrictionTitles:[I

    new-array v0, v0, [I

    const v1, 0x7f1212f3

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/users/RestrictionUtils;->sRestrictionDescriptions:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRestrictions(Landroid/content/Context;Landroid/os/UserHandle;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/RestrictionEntry;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    sget-object v5, Lcom/android/settings/users/RestrictionUtils;->sRestrictionKeys:[Ljava/lang/String;

    array-length v6, v5

    if-ge v4, v6, :cond_0

    new-instance v6, Landroid/content/RestrictionEntry;

    aget-object v7, v5, v4

    aget-object v5, v5, v4

    const/4 v8, 0x0

    invoke-virtual {v3, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const/4 v8, 0x1

    xor-int/2addr v5, v8

    invoke-direct {v6, v7, v5}, Landroid/content/RestrictionEntry;-><init>(Ljava/lang/String;Z)V

    move-object v5, v6

    sget-object v6, Lcom/android/settings/users/RestrictionUtils;->sRestrictionTitles:[I

    aget v6, v6, v4

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/RestrictionEntry;->setTitle(Ljava/lang/String;)V

    sget-object v6, Lcom/android/settings/users/RestrictionUtils;->sRestrictionDescriptions:[I

    aget v6, v6, v4

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/RestrictionEntry;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Landroid/content/RestrictionEntry;->setType(I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static setRestrictions(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/UserHandle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/content/RestrictionEntry;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/RestrictionEntry;

    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getSelectedState()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v3, v4, p2}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    goto :goto_0

    :cond_0
    return-void
.end method
