import Head from 'next/head';
import Image from 'next/image';

import styles from '@/styles/Home.module.css';

export default function Home() {
  return (
    <div className={styles.container}>
      <Head>
        <title>TypeScript starter for Next.js</title>
        <meta
          name="description"
          content="TypeScript starter for Next.js that includes all you need to build amazing apps"
        />
        <link rel="icon" href="/favicon.ico" />
      </Head>

      <div className="container mx-auto">
        <div className="container max-w-4xl mx-auto pt-16 md:pt-32 text-center break-normal">
          <p className="text-xl md:text-2x   bg-red-50">Welcome to my Blog</p>
        </div>
      </div>
    </div>
  );
}
