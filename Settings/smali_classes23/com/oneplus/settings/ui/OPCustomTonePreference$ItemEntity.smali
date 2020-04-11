.class Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;
.super Ljava/lang/Object;
.source "OPCustomTonePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ui/OPCustomTonePreference;
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

.field final synthetic this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPCustomTonePreference;Ljava/lang/String;II)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;->selected:Z

    iput-object p2, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;->name:Ljava/lang/String;

    iput p3, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;->resId:I

    iput p4, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;->index:I

    return-void
.end method
