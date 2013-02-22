// Navigation pane project template
#ifndef TimeKiller_HPP_
#define TimeKiller_HPP_

#include <QObject>

namespace bb { namespace cascades { class Application; }}

/*!
 * @brief Application pane object
 *
 *Use this object to create and init app UI, to create context objects, to register the new meta types etc.
 */
class TimeKiller : public QObject
{
    Q_OBJECT
public:
    TimeKiller(bb::cascades::Application *app);
    virtual ~TimeKiller() {}
};

#endif /* TimeKiller_HPP_ */