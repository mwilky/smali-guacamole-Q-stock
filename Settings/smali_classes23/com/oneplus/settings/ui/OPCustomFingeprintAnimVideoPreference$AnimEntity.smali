.class Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;
.super Ljava/lang/Object;
.source "OPCustomFingeprintAnimVideoPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimEntity"
.end annotation


# instance fields
.field animIndex:I

.field animName:Ljava/lang/String;

.field animResId:I

.field selected:Z

.field final synthetic this$0:Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;Ljava/lang/String;II)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;->this$0:Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;->selected:Z

    iput-object p2, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;->animName:Ljava/lang/String;

    iput p3, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;->animResId:I

    iput p4, p0, Lcom/oneplus/settings/ui/OPCustomFingeprintAnimVideoPreference$AnimEntity;->animIndex:I

    return-void
.end method
