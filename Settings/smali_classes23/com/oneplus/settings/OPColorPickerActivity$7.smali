.class Lcom/oneplus/settings/OPColorPickerActivity$7;
.super Ljava/lang/Object;
.source "OPColorPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPColorPickerActivity;->sendTheme()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPColorPickerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPColorPickerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity$7;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity$7;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPThemeUtils;->getCurrentShape(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPThemeUtils;->getCurrentShapeByIndex(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity$7;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    const-string v2, "oneplus_shape"

    invoke-static {v2, v0, v1}, Lcom/oneplus/settings/utils/OPThemeUtils;->enableTheme(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
