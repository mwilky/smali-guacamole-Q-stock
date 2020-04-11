.class public final synthetic Lcom/android/settings/notification/-$$Lambda$ZenAccessSettings$nMW8O8A2qVBRFEJH18h3O2VbCD8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/notification/ZenAccessSettings;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Landroid/content/pm/ApplicationInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/ZenAccessSettings;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/-$$Lambda$ZenAccessSettings$nMW8O8A2qVBRFEJH18h3O2VbCD8;->f$0:Lcom/android/settings/notification/ZenAccessSettings;

    iput-object p2, p0, Lcom/android/settings/notification/-$$Lambda$ZenAccessSettings$nMW8O8A2qVBRFEJH18h3O2VbCD8;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/notification/-$$Lambda$ZenAccessSettings$nMW8O8A2qVBRFEJH18h3O2VbCD8;->f$2:Landroid/content/pm/ApplicationInfo;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/-$$Lambda$ZenAccessSettings$nMW8O8A2qVBRFEJH18h3O2VbCD8;->f$0:Lcom/android/settings/notification/ZenAccessSettings;

    iget-object v1, p0, Lcom/android/settings/notification/-$$Lambda$ZenAccessSettings$nMW8O8A2qVBRFEJH18h3O2VbCD8;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/notification/-$$Lambda$ZenAccessSettings$nMW8O8A2qVBRFEJH18h3O2VbCD8;->f$2:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settings/notification/ZenAccessSettings;->lambda$reloadList$0$ZenAccessSettings(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
