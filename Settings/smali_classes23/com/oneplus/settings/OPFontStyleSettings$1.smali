.class Lcom/oneplus/settings/OPFontStyleSettings$1;
.super Ljava/lang/Object;
.source "OPFontStyleSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPFontStyleSettings;->setFontStyle(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPFontStyleSettings;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPFontStyleSettings;I)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/OPFontStyleSettings$1;->this$0:Lcom/oneplus/settings/OPFontStyleSettings;

    iput p2, p0, Lcom/oneplus/settings/OPFontStyleSettings$1;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-wide/16 v0, 0x12c

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/OPFontStyleSettings$1;->this$0:Lcom/oneplus/settings/OPFontStyleSettings;

    invoke-static {v0}, Lcom/oneplus/settings/OPFontStyleSettings;->access$000(Lcom/oneplus/settings/OPFontStyleSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/settings/OPFontStyleSettings$1;->val$value:I

    const-string v2, "oem_font_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget v1, p0, Lcom/oneplus/settings/OPFontStyleSettings$1;->val$value:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "oneplus_dynamicfont"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/oneplus/sdk/utils/OpTheme;

    iget-object v2, p0, Lcom/oneplus/settings/OPFontStyleSettings$1;->this$0:Lcom/oneplus/settings/OPFontStyleSettings;

    invoke-static {v2}, Lcom/oneplus/settings/OPFontStyleSettings;->access$100(Lcom/oneplus/settings/OPFontStyleSettings;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oneplus/sdk/utils/OpTheme;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/oneplus/sdk/utils/OpTheme;->enableTheme(Ljava/util/HashMap;)I

    return-void
.end method
