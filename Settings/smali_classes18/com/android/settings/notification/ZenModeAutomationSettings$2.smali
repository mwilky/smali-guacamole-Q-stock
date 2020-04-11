.class Lcom/android/settings/notification/ZenModeAutomationSettings$2;
.super Ljava/lang/Object;
.source "ZenModeAutomationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeAutomationSettings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeAutomationSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$2;->this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$2;->this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->access$000(Lcom/android/settings/notification/ZenModeAutomationSettings;)[Z

    move-result-object v0

    aput-boolean p3, v0, p2

    return-void
.end method
