'use client';

interface LinkItem {
  title: string;
  url: string;
  description?: string;
}

interface Section {
  id: string;
  title: string;
  color: string;
  items: LinkItem[];
}

const sections: Section[] = [
  {
    id: 'afh',
    title: 'AFH',
    color: 'bg-blue-500',
    items: [
      { title: 'AFH Regulations', url: '#', description: 'Adult Family Home regulations and guidelines' },
      { title: 'AFH Licensing', url: '#', description: 'Information about AFH licensing requirements' },
      { title: 'AFH Training', url: '#', description: 'Training resources for AFH providers' },
      { title: 'AFH Forms', url: '#', description: 'Downloadable forms for AFH operations' },
      { title: 'AFH Resources', url: '#', description: 'Additional resources for AFH providers' },
      { title: 'AFH Compliance', url: '#', description: 'Compliance guidelines and checklists' },
      { title: 'AFH Support', url: '#', description: 'Support services for AFH providers' },
      { title: 'AFH Updates', url: '#', description: 'Latest updates and news for AFH' },
      { title: 'AFH Policies', url: '#', description: 'Policies and procedures for AFH' },
      { title: 'AFH Guidelines', url: '#', description: 'Guidelines for AFH operations' },
    ],
  },
  {
    id: 'wac-388-76',
    title: 'WAC 388-76',
    color: 'bg-green-500',
    items: [
      { title: 'WAC 388-76 Overview', url: '#', description: 'Overview of WAC 388-76 regulations' },
      { title: 'WAC 388-76 Full Text', url: '#', description: 'Complete text of WAC 388-76' },
      { title: 'WAC 388-76 Updates', url: '#', description: 'Recent updates to WAC 388-76' },
      { title: 'WAC 388-76 Compliance', url: '#', description: 'Compliance requirements under WAC 388-76' },
      { title: 'WAC 388-76 FAQ', url: '#', description: 'Frequently asked questions about WAC 388-76' },
      { title: 'WAC 388-76 Training', url: '#', description: 'Training materials for WAC 388-76' },
      { title: 'WAC 388-76 Resources', url: '#', description: 'Additional resources and guides' },
      { title: 'WAC 388-76 Interpretations', url: '#', description: 'Interpretations and clarifications' },
      { title: 'WAC 388-76 History', url: '#', description: 'Historical changes to WAC 388-76' },
    ],
  },
  {
    id: 'rec',
    title: 'REC',
    color: 'bg-purple-500',
    items: [
      { title: 'REC Homepage', url: '#', description: 'Regional Education Center main page' },
      { title: 'REC Programs', url: '#', description: 'Available programs at REC' },
      { title: 'REC Training', url: '#', description: 'Training opportunities through REC' },
      { title: 'REC Resources', url: '#', description: 'Educational resources from REC' },
      { title: 'REC Events', url: '#', description: 'Upcoming events and workshops' },
      { title: 'REC Contact', url: '#', description: 'Contact information for REC' },
      { title: 'REC Registration', url: '#', description: 'Register for REC programs' },
      { title: 'REC Calendar', url: '#', description: 'REC event calendar' },
      { title: 'REC Newsletters', url: '#', description: 'REC newsletters and updates' },
    ],
  },
  {
    id: 'ibc',
    title: 'IBC',
    color: 'bg-red-500',
    items: [
      { title: 'IBC Standards', url: '#', description: 'International Building Code standards' },
      { title: 'IBC Compliance', url: '#', description: 'IBC compliance requirements' },
      { title: 'IBC Resources', url: '#', description: 'Resources for IBC implementation' },
      { title: 'IBC Training', url: '#', description: 'Training on IBC standards' },
      { title: 'IBC Updates', url: '#', description: 'Latest IBC updates and changes' },
      { title: 'IBC Documentation', url: '#', description: 'IBC documentation and guides' },
      { title: 'IBC Support', url: '#', description: 'Support for IBC questions' },
      { title: 'IBC Code Changes', url: '#', description: 'Recent code changes and amendments' },
      { title: 'IBC Reference', url: '#', description: 'IBC reference materials' },
    ],
  },
  {
    id: 'rcs',
    title: 'RCS',
    color: 'bg-yellow-500',
    items: [
      { title: 'RCS Services', url: '#', description: 'Residential Care Services information' },
      { title: 'RCS Regulations', url: '#', description: 'RCS regulations and guidelines' },
      { title: 'RCS Licensing', url: '#', description: 'RCS licensing requirements' },
      { title: 'RCS Training', url: '#', description: 'Training for RCS providers' },
      { title: 'RCS Resources', url: '#', description: 'Resources for RCS operations' },
      { title: 'RCS Forms', url: '#', description: 'Forms and documents for RCS' },
      { title: 'RCS Support', url: '#', description: 'Support services for RCS' },
      { title: 'RCS Policies', url: '#', description: 'RCS policies and procedures' },
      { title: 'RCS Updates', url: '#', description: 'Latest RCS updates' },
    ],
  },
  {
    id: 'altsa',
    title: 'ALTSA',
    color: 'bg-indigo-500',
    items: [
      { title: 'ALTSA Homepage', url: '#', description: 'Aging and Long-Term Support Administration' },
      { title: 'ALTSA Programs', url: '#', description: 'Programs offered by ALTSA' },
      { title: 'ALTSA Resources', url: '#', description: 'Resources from ALTSA' },
      { title: 'ALTSA Regulations', url: '#', description: 'ALTSA regulations and policies' },
      { title: 'ALTSA Training', url: '#', description: 'Training opportunities through ALTSA' },
      { title: 'ALTSA Contact', url: '#', description: 'Contact ALTSA for assistance' },
      { title: 'ALTSA Updates', url: '#', description: 'Latest updates from ALTSA' },
      { title: 'ALTSA Services', url: '#', description: 'Services provided by ALTSA' },
      { title: 'ALTSA Forms', url: '#', description: 'ALTSA forms and applications' },
    ],
  },
  {
    id: 'dshs',
    title: 'DSHS',
    color: 'bg-teal-500',
    items: [
      { title: 'DSHS Homepage', url: '#', description: 'Department of Social and Health Services' },
      { title: 'DSHS Services', url: '#', description: 'Services provided by DSHS' },
      { title: 'DSHS Programs', url: '#', description: 'Programs available through DSHS' },
      { title: 'DSHS Resources', url: '#', description: 'Resources from DSHS' },
      { title: 'DSHS Forms', url: '#', description: 'Forms and applications from DSHS' },
      { title: 'DSHS Contact', url: '#', description: 'Contact DSHS for assistance' },
      { title: 'DSHS Updates', url: '#', description: 'Latest news and updates from DSHS' },
      { title: 'DSHS Regulations', url: '#', description: 'DSHS regulations and policies' },
      { title: 'DSHS Training', url: '#', description: 'Training opportunities from DSHS' },
    ],
  },
  {
    id: 'wabo',
    title: 'WABO',
    color: 'bg-orange-500',
    items: [
      { title: 'WABO Homepage', url: '#', description: 'Washington Association of Building Officials' },
      { title: 'WABO Standards', url: '#', description: 'Building standards from WABO' },
      { title: 'WABO Resources', url: '#', description: 'Resources from WABO' },
      { title: 'WABO Training', url: '#', description: 'Training programs from WABO' },
      { title: 'WABO Events', url: '#', description: 'Upcoming WABO events' },
      { title: 'WABO Membership', url: '#', description: 'WABO membership information' },
      { title: 'WABO Contact', url: '#', description: 'Contact WABO for more information' },
      { title: 'WABO News', url: '#', description: 'WABO news and updates' },
      { title: 'WABO Publications', url: '#', description: 'WABO publications and documents' },
    ],
  },
  {
    id: 'resources',
    title: 'Resources',
    color: 'bg-pink-500',
    items: [
      { title: 'General Resources', url: '#', description: 'General resources and information' },
      { title: 'Training Materials', url: '#', description: 'Training materials and guides' },
      { title: 'Documentation', url: '#', description: 'Documentation and reference materials' },
      { title: 'Best Practices', url: '#', description: 'Best practices and guidelines' },
      { title: 'Help Center', url: '#', description: 'Help center and support' },
      { title: 'FAQ', url: '#', description: 'Frequently asked questions' },
      { title: 'Contact Us', url: '#', description: 'Contact information and support' },
      { title: 'Video Tutorials', url: '#', description: 'Video tutorials and guides' },
      { title: 'Webinars', url: '#', description: 'Recorded and upcoming webinars' },
    ],
  },
  {
    id: 'quick-links',
    title: 'Quick Links',
    color: 'bg-cyan-500',
    items: [
      { title: 'Emergency Contacts', url: '#', description: 'Emergency contact information' },
      { title: 'Important Updates', url: '#', description: 'Important updates and announcements' },
      { title: 'Calendar', url: '#', description: 'Calendar of events and deadlines' },
      { title: 'News & Updates', url: '#', description: 'Latest news and updates' },
      { title: 'Downloads', url: '#', description: 'Downloadable files and documents' },
      { title: 'External Links', url: '#', description: 'Links to external resources' },
      { title: 'Feedback', url: '#', description: 'Submit feedback and suggestions' },
      { title: 'Site Map', url: '#', description: 'Site navigation map' },
      { title: 'Search', url: '#', description: 'Search functionality' },
    ],
  },
];

export default function Home() {
  return (
    <main className="min-h-screen bg-gradient-to-br from-gray-50 to-gray-100 dark:from-gray-900 dark:to-gray-800">
      <div className="container mx-auto px-4 py-8">
        <header className="text-center mb-12">
          <h1 className="text-5xl font-bold text-gray-900 dark:text-white mb-4">
            Heavenly AFH
          </h1>
          <p className="text-xl text-gray-600 dark:text-gray-300">
            One-Stop Service Portal - Easy Access to All Related Links
          </p>
        </header>

        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 xl:grid-cols-5 gap-6">
          {sections.map((section) => (
            <SectionCard key={section.id} section={section} />
          ))}
        </div>
      </div>
    </main>
  );
}

function SectionCard({ section }: { section: Section }) {
  return (
    <div className="bg-white dark:bg-gray-800 rounded-lg shadow-lg overflow-hidden transition-all duration-300 hover:shadow-xl flex flex-col h-[600px]">
      <div className={`${section.color} text-white p-4 flex-shrink-0`}>
        <h2 className="text-2xl font-bold text-center">{section.title}</h2>
        <p className="text-sm text-center mt-1 opacity-90">
          {section.items.length} items
        </p>
      </div>

      <div className="flex-1 overflow-y-auto p-4 space-y-2 custom-scrollbar">
        {section.items.map((item, index) => (
          <a
            key={index}
            href={item.url}
            className="block p-3 rounded-lg bg-gray-50 dark:bg-gray-700 hover:bg-gray-100 dark:hover:bg-gray-600 transition-colors duration-200 border border-gray-200 dark:border-gray-600 hover:border-blue-400 dark:hover:border-blue-500"
          >
            <h3 className="font-semibold text-gray-900 dark:text-white mb-1 text-sm">
              {item.title}
            </h3>
            {item.description && (
              <p className="text-xs text-gray-600 dark:text-gray-400">
                {item.description}
              </p>
            )}
          </a>
        ))}
      </div>
    </div>
  );
}

