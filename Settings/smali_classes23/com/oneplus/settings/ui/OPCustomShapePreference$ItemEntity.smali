.class Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;
.super Ljava/lang/Object;
.source "OPCustomShapePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ui/OPCustomShapePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemEntity"
.end annotation


# instance fields
.field index:I

.field name:Ljava/lang/String;

.field resId:I

.field selected:Z

.field final synthetic this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/ui/OPCustomShapePreference;Ljava/lang/String;II)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;->selected:Z

    iput-object p2, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;->name:Ljava/lang/String;

    iput p3, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;->resId:I

    iput p4, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;->index:I

    return-void
.end method
