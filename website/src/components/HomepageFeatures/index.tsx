import type {ReactNode} from 'react';
import clsx from 'clsx';
import Heading from '@theme/Heading';
import styles from './styles.module.css';

type FeatureItem = {
  title: string;
  Svg: React.ComponentType<React.ComponentProps<'svg'>>;
  description: ReactNode;
};

const FeatureList: FeatureItem[] = [
  {
    title: 'Autopilot',
    Svg: require('@site/static/img/large_logo1.svg').default,
    description: (
      <>
        It automates the steps that a human operator would do to deploy and to manage a Postgres database inside Kubernetes, including automated failover.
      </>
    ),
  },
  {
    title: 'Data persistence',
    Svg: require('@site/static/img/large_logo2.svg').default,
    description: (
      <>
        It doesn’t rely on statefulsets and uses its own way to manage persistent volume claims where the PGDATA is stored.
      </>
    ),
  },
  {
    title: 'Designed for Kubernetes',
    Svg: require('@site/static/img/large_logo1.svg').default,
    description: (
      <>
        It’s entirely declarative, and directly integrates with the Kubernetes API server to update the state of the cluster — for this reason, it does not require an external failover management tool.
      </>
    ),
  },
];

function Feature({title, Svg, description}: FeatureItem) {
  return (
    <div className={clsx('col col--4')}>
      <div className="text--center">
        <Svg className={styles.featureSvg} role="img" />
      </div>
      <div className="text--center padding-horiz--md">
        <Heading as="h3">{title}</Heading>
        <p>{description}</p>
      </div>
    </div>
  );
}

export default function HomepageFeatures(): ReactNode {
  return (
    <section className={styles.features}>
      <div className="container">
        <div className="row">
          {FeatureList.map((props, idx) => (
            <Feature key={idx} {...props} />
          ))}
        </div>
      </div>
    </section>
  );
}
