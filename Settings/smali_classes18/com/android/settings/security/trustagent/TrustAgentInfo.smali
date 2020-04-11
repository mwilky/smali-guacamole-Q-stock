.class public Lcom/android/settings/security/trustagent/TrustAgentInfo;
.super Ljava/lang/Object;
.source "TrustAgentInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/security/trustagent/TrustAgentInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mLabel:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/security/trustagent/TrustAgentInfo;->mLabel:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/settings/security/trustagent/TrustAgentInfo;->mComponentName:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/settings/security/trustagent/TrustAgentInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/security/trustagent/TrustAgentInfo;)I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/android/settings/security/trustagent/TrustAgentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/settings/security/trustagent/TrustAgentInfo;

    invoke-virtual {p0, p1}, Lcom/android/settings/security/trustagent/TrustAgentInfo;->compareTo(Lcom/android/settings/security/trustagent/TrustAgentInfo;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/settings/security/trustagent/TrustAgentInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentInfo;->mComponentName:Landroid/content/ComponentName;

    move-object v1, p1

    check-cast v1, Lcom/android/settings/security/trustagent/TrustAgentInfo;

    invoke-virtual {v1}, Lcom/android/settings/security/trustagent/TrustAgentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentInfo;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentInfo;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method
