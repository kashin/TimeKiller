// Navigation pane project template
#include "TimeKiller.hpp"

#include <bb/cascades/Application>
#include <bb/cascades/QmlDocument>
#include <bb/cascades/AbstractPane>
#include <qt4/Qt/qtimer.h>

using namespace bb::cascades;

TimeKiller::TimeKiller(bb::cascades::Application *app)
: QObject(app)
{
    QCoreApplication::setOrganizationName("MasterDon");
    QCoreApplication::setApplicationName("ToBeOrNotToBeDemo");
    qmlRegisterType<QTimer>("time.killer", 1, 0, "Timer");
    // create scene document from main.qml asset
    // set parent to created document to ensure it exists for the whole application lifetime
    QmlDocument *qml = QmlDocument::create("asset:///main.qml").parent(this);

    // create root object for the UI
    AbstractPane *root = qml->createRootObject<AbstractPane>();
    // set created root object as a scene
    app->setScene(root);
}
