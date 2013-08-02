package azkaban.jobtype.hiveutils.azkaban.hive.actions;


import java.util.Properties;

import org.apache.log4j.Logger;

import azkaban.jobtype.hiveutils.HiveQueryExecutionException;
import azkaban.jobtype.hiveutils.HiveQueryExecutor;
import azkaban.jobtype.hiveutils.azkaban.HiveAction;
import azkaban.jobtype.hiveutils.azkaban.HiveViaAzkabanException;
import azkaban.jobtype.hiveutils.azkaban.Utils;
import azkaban.jobtype.hiveutils.azkaban.Utils.QueryPropKeys;
import azkaban.jobtype.hiveutils.util.AzkabanJobPropertyDescription;

/**
 * Execute the provided Hive query.  Queries can be specified to Azkaban either directly or as a pointer to a file
 * provided with workflow.
 */
public class ExecuteHiveQuery implements HiveAction {
  private final static Logger LOG = Logger.getLogger("com.linkedin.hive.azkaban.hive.actions.ExecuteHiveQuery");
  @AzkabanJobPropertyDescription("Verbatim query to execute. Can also specify hive.query.nn where nn is a series of padded numbers, which will be executed in order")
  public static final String HIVE_QUERY = "hive.query";
  @AzkabanJobPropertyDescription("File to load query from.  Should be in same zip.")
  public static final String HIVE_QUERY_FILE = "hive.query.file";
  @AzkabanJobPropertyDescription("URL to retrieve the query from.")
  public static final String HIVE_QUERY_URL = "hive.query.url";

  private final HiveQueryExecutor hqe;
  private final String q;

  public ExecuteHiveQuery(Properties properties, HiveQueryExecutor hqe) throws HiveViaAzkabanException {
    QueryPropKeys keys = new QueryPropKeys(HIVE_QUERY, HIVE_QUERY, HIVE_QUERY_FILE, HIVE_QUERY_URL);
    this. q = Utils.determineQuery(properties, keys);
    this.hqe = hqe;
  }

  @Override
  public void execute() throws HiveViaAzkabanException {
    try {
      hqe.executeQuery(q);
    } catch (HiveQueryExecutionException e) {
      throw new HiveViaAzkabanException(e);
    }
  }
}

