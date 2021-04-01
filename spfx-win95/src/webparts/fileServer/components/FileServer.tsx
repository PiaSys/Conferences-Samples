import * as React from 'react';
import styles from './FileServer.module.scss';
import { IFileServerProps } from './IFileServerProps';
import { escape } from '@microsoft/sp-lodash-subset';
import { createGlobalStyle, ThemeProvider } from 'styled-components';
import { AppBar, Window, WindowHeader, Button, Toolbar, WindowContent, Panel, styleReset, List, ListItem, Divider } from 'react95';
import original from "react95/dist/themes/original";
import { Icon } from 'office-ui-fabric-react/lib/Icon';

const GlobalStyles = createGlobalStyle`
  @font-face {
    font-family: 'ms_sans_serif';
    src: url('../../../fonts/ms_sans_serif.woff2') format('woff2');
    font-weight: 400;
    font-style: normal
  }
  @font-face {
    font-family: 'ms_sans_serif';
    src: url('../../../fonts/ms_sans_serif_bold.woff2') format('woff2');
    font-weight: bold;
    font-style: normal
  }
  body {
    font-family: 'ms_sans_serif';
  }
  ${styleReset}
`;

export default class FileServer extends React.Component<IFileServerProps, {}> {
  public render(): React.ReactElement<IFileServerProps> {

    const files = [
      { fileName: "project-specs.docx", icon: "WordDocument"},
      { fileName: "budget.xlsx", icon: "ExcelDocument"},
      { fileName: "presentation.pptx", icon: "PowerPointDocument"},
      { fileName: "techbites2022.pptx", icon: "PowerPointDocument"},
      { fileName: "customer.docx", icon: "WordDocument"},
      { fileName: "revenues.xlsx", icon: "ExcelDocument"},
      { fileName: "products-list.docx", icon: "WordDocument"},
      { fileName: "products.xlsx", icon: "ExcelDocument"},
      { fileName: "april.pptx", icon: "PowerPointDocument"},
      { fileName: "fool.docx", icon: "WordDocument"},
      { fileName: "customers.xlsx", icon: "ExcelDocument"},
      { fileName: "nortwhind.pptx", icon: "PowerPointDocument"},
      { fileName: "future-directions.docx", icon: "WordDocument"},
      { fileName: "contoso-sales.xlsx", icon: "ExcelDocument"},
      { fileName: "nothing-to-show.pptx", icon: "PowerPointDocument"},
    ];

    return (
      <div>
        <GlobalStyles />
        <ThemeProvider theme={original}>
          <Window resizable className='window'>
            <WindowHeader className='window-header'>
              <span>File Manager</span>
            </WindowHeader>
            <Toolbar>
              <Button variant='menu' size='sm'>
                File
              </Button>
              <Button variant='menu' size='sm'>
                Edit
              </Button>
              <Button variant='menu' size='sm'>
                View
              </Button>
              <Button variant='menu' size='sm'>
                Go
              </Button>
              <Button variant='menu' size='sm'>
                Favorites
              </Button>
              <Button variant='menu' size='sm'>
                Tools
              </Button>
              <Button variant='menu' size='sm'>
                Help
              </Button>
            </Toolbar>
            <WindowContent>
              <p style={ {background: "#FFFFFF"} }>
                <ul>
                  {files.map(f => <li>&nbsp;<Icon iconName={f.icon} />&nbsp;{f.fileName}</li>)}
                </ul>
              </p>
            </WindowContent>
            <Panel variant='well' className='footer'>
              &nbsp;{files.length} file(s)&nbsp;
            </Panel>
          </Window>
        </ThemeProvider>
      </div>
    );
  }
}
