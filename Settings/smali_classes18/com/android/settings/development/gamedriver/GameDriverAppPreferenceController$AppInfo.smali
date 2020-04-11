.class Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$AppInfo;
.super Ljava/lang/Object;
.source "GameDriverAppPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppInfo"
.end annotation


# instance fields
.field final info:Landroid/content/pm/ApplicationInfo;

.field final label:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$AppInfo;->this$0:Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$AppInfo;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$AppInfo;->label:Ljava/lang/String;

    return-void
.end method
