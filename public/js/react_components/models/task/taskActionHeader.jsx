var React           = require('react/addons');
var S               = require('string');
var cx              = React.addons.classSet;
var TaskOpEnum      = require('../../../../../src/com/redhat/ascension/rules/enums/TaskOpEnum.coffee');
var EntityOpEnum    = require('../../../../../src/com/redhat/ascension/rules/enums/ResourceOpEnum.coffee');

var DeclinedTasksActions    = require('../../actions/DeclinedTasksActions');

var Component = React.createClass({
    displayName: 'TaskActionHeader',
    _declineTask: function() {
        DeclinedTasksActions.declineTask(this.props.case)
    },
    render: function() {
        var resourceOp;
        if (this.props.task != null) {
            resourceOp = EntityOpEnum[this.props.task.resource.resourceOperation];
        } else if (this.props.case != null) {
            resourceOp = EntityOpEnum.getOpFromCase(this.props.case);
        } else {
            return null;
        }

        if (resourceOp == null && this.props.case != null) {
            console.error(`No resourceOp, case.resource.internalStatus: ${this.props.case.resource.internalStatus}`)
        }
        return (
            <div className="row">
                <div className='col-sm-6'>
                    <h4>
                        {resourceOp.display} 
                    </h4>
                </div>
                <div className='col-sm-6'>
                    <div className='pull-right'>
                        <button className='btn btn-secondary' onClick={this._declineTask}>{`Deny`}</button>
                    &nbsp;
                        <button className='btn btn-secondary'>{`Accept`}</button>
                    </div>
                </div>
            </div>
        )
    }
});

module.exports = Component;
