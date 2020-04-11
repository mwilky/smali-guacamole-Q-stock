.class public Lcom/oneplus/settings/others/OPToolsSettings$WLBFeatureObserver;
.super Landroid/database/ContentObserver;
.source "OPToolsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/others/OPToolsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WLBFeatureObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/others/OPToolsSettings;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/others/OPToolsSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/others/OPToolsSettings$WLBFeatureObserver;->this$0:Lcom/oneplus/settings/others/OPToolsSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/others/OPToolsSettings$WLBFeatureObserver;->this$0:Lcom/oneplus/settings/others/OPToolsSettings;

    invoke-static {v0}, Lcom/oneplus/settings/others/OPToolsSettings;->access$300(Lcom/oneplus/settings/others/OPToolsSettings;)V

    return-void
.end method
