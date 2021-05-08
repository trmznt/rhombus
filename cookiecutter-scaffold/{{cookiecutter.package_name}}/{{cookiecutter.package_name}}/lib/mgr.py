
from rhombus.scripts import setup_settings, arg_parser
from rhombus.lib.utils import cerr, cout, cexit, get_dbhandler
from rhombus.models.core import set_func_userid

def init_argparser( parser = None ):

    if parser is None:
        p = arg_parser('mgr [options]')
    else:
        p = parser

    return p


def main( args ):

    settings = setup_settings( args )

    if args.commit:
        with transaction.manager:
            do_mgr( args, settings )
            cerr('** COMMIT database **')

    else:
        do_mgr( args, settings )


def do_mgr(args, settings, dbh = None):

    if not dbh:
        dbh = get_dbhandler( settings )

    # perform function here

