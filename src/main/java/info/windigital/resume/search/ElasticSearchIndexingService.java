package info.windigital.resume.search;

import info.windigital.resume.entity.Profile;
import info.windigital.resume.service.FindProfileService;
import org.elasticsearch.action.delete.DeleteRequest;
import org.elasticsearch.client.RestClient;
import org.elasticsearch.client.RestHighLevelClient;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.PostConstruct;

//@Service
//@Transactional
public class ElasticSearchIndexingService {
   /* private static final Logger LOGGER = LoggerFactory.getLogger(ElasticSearchIndexingService.class);
    @Value("${index.all.during.startup}")
    private boolean indexAllDuringStartup;

    private ProfileSearchRepository profileSearchRepository;
    private final RestHighLevelClient highLevelClient;
    private final FindProfileService findProfileService;

    @Autowired
    public ElasticSearchIndexingService(ProfileSearchRepository profileSearchRepository, RestHighLevelClient highLevelClient, FindProfileService findProfileService) {
        this.profileSearchRepository = profileSearchRepository;
        this.highLevelClient = highLevelClient;
        this.findProfileService = findProfileService;
    }

    @PostConstruct
    private void postConstruct() {
        if (indexAllDuringStartup) {
            LOGGER.info("Detected index ALL command");
            LOGGER.info("Clear old index");
            RestClient lowLevelClient = highLevelClient.getLowLevelClient();
            DeleteRequest deleteRequest = new DeleteRequest(Profile.class);
           highLevelClient.delete
            LOGGER.info("Start index of profiles");
            for (Profile p : findProfileService.findAllForIndexing()) {
                profileSearchRepository.save(p);
                LOGGER.info("Successful indexing of profile:{}", p.getUid());
            }
            LOGGER.info("Finish index of profiles");
        } else {
            LOGGER.info("IndexAllDuringStartup is disabled");
        }

    }*/
}
